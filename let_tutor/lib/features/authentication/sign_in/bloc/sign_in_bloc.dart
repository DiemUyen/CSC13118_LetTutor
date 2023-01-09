import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/models/responses/auth_response.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../generated/l10n.dart';
import '../../../../services/shared_preferences_service.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({
    required AuthRepository authRepository,
    required SharedPreferencesService preferencesService,
  }) : super(const SignInState()) {
    _authRepository = authRepository;
    _preferencesService = preferencesService;
    on<SignInEmailChanged>(_onEmailChanged);
    on<SignInPasswordChanged>(_onPasswordChanged);
    on<SignInSignInButtonPressed>(_onSignInButtonPressed);
    on<SignInFacebookButtonPressed>(_onFacebookButtonPressed);
    on<SignInGoogleButtonPressed>(_onGoogleButtonPressed);
  }

  late final AuthRepository _authRepository;
  late final SharedPreferencesService _preferencesService;
  String email = '';
  String password = '';
  final RegExp regExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  FutureOr<void> _onEmailChanged(
      SignInEmailChanged event, Emitter<SignInState> emit) {
    email = event.email;

    if (email.isEmpty) {
      emit(state.copyWith(
          emailError: S.current.email_empty,
          emailErrorStatus: SignInStatus.emailInvalid,
          status: SignInStatus.informationInvalid));
    } else if (!regExp.hasMatch(email)) {
      emit(state.copyWith(
          emailError: S.current.email_wrong_format,
          emailErrorStatus: SignInStatus.emailInvalid,
          status: SignInStatus.informationInvalid));
    } else {
      emit(state.copyWith(
          emailError: '',
          emailErrorStatus: SignInStatus.emailValid,
          status: password.isNotEmpty
              ? SignInStatus.informationValid
              : SignInStatus.informationInvalid));
    }
  }

  FutureOr<void> _onPasswordChanged(
      SignInPasswordChanged event, Emitter<SignInState> emit) {
    password = event.password;

    if (password.isEmpty) {
      emit(state.copyWith(
          passwordError: S.current.password_empty,
          passwordErrorStatus: SignInStatus.passwordInvalid,
          status: SignInStatus.informationInvalid));
    } else {
      emit(state.copyWith(
          passwordError: '',
          passwordErrorStatus: SignInStatus.passwordValid,
          status: email.isNotEmpty && regExp.hasMatch(email)
              ? SignInStatus.informationValid
              : SignInStatus.informationInvalid));
    }
  }

  FutureOr<void> _onSignInButtonPressed(
      SignInSignInButtonPressed event, Emitter<SignInState> emit) async {
    emit(state.copyWith(status: SignInStatus.loading));

    try {
      AuthResponse authResponse = await _authRepository.login(email, password);
      /*_preferencesService.setToken(authResponse.tokens!.access!.token!);
      _preferencesService.setValue(
          key: 'refreshToken', value: authResponse.tokens!.refresh!.token!);
      _preferencesService.setValue(key: 'userId', value: authResponse.user!.id!);
      _preferencesService.setValue(key: 'userName', value: authResponse.user!.name!);*/
      _saveToken(authResponse);
      emit(state.copyWith(status: SignInStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: SignInStatus.loadFailed));
    }
  }

  FutureOr<void> _onFacebookButtonPressed(
      SignInFacebookButtonPressed event, Emitter<SignInState> emit) async {
    emit(state.copyWith(status: SignInStatus.loading));

    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();
      if (loginResult.status == LoginStatus.success) {
        final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken?.token ?? '');
        final userCredential = await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
        final authResponse = await _authRepository.loginByFacebook(userCredential.credential?.accessToken ?? '');
        _saveToken(authResponse);
        emit(state.copyWith(status: SignInStatus.loadSuccess));
      }
      else if (loginResult.status == LoginStatus.failed){
        emit(state.copyWith(status: SignInStatus.loadFailed));
      }
    }
    catch (exception) {
      emit(state.copyWith(status: SignInStatus.loadFailed));
    }
  }

  FutureOr<void> _onGoogleButtonPressed(
      SignInGoogleButtonPressed event, Emitter<SignInState> emit) async {
    emit(state.copyWith(status: SignInStatus.loading));

    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication? authentication = await googleSignInAccount?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: authentication?.accessToken,
        idToken: authentication?.idToken,
      );
      final userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      final authResponse = await _authRepository.loginByGoogle(userCredential.credential?.accessToken ?? '');
      _saveToken(authResponse);
      emit(state.copyWith(status: SignInStatus.loadSuccess));
    }
    catch (exception) {
      emit(state.copyWith(status: SignInStatus.loadFailed));
    }
  }

  void _saveToken(AuthResponse authResponse) {
    _preferencesService.setToken(authResponse.tokens!.access!.token!);
    _preferencesService.setValue(
        key: 'refreshToken', value: authResponse.tokens!.refresh!.token!);
    _preferencesService.setValue(key: 'userId', value: authResponse.user!.id!);
    _preferencesService.setValue(key: 'userName', value: authResponse.user!.name!);
  }
}
