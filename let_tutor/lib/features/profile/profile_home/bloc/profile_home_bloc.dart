import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../injector/injector.dart';
import '../../../../services/shared_preferences_service.dart';

part 'profile_home_event.dart';
part 'profile_home_state.dart';

class ProfileHomeBloc extends Bloc<ProfileHomeEvent, ProfileHomeState> {
  ProfileHomeBloc() : super(const ProfileHomeInit()) {
    on<ProfileHomeLogOutButtonPressed>(_onLogOutButtonPressed);
  }

  final SharedPreferencesService _preferencesService = Injector.instance<SharedPreferencesService>();

  void _onLogOutButtonPressed(ProfileHomeLogOutButtonPressed event, Emitter emit) async {
    try {
      final googleSignIn = GoogleSignIn();
      if (await googleSignIn.isSignedIn()) {
        await googleSignIn.disconnect();
        await FacebookAuth.instance.logOut();
        await FirebaseAuth.instance.signOut();
      }
      _deleteToken();
      emit(const ProfileHomeLoadSuccess());
    }
    catch (exception) {
      emit(const ProfileHomeLoadFailure());
    }
  }

  void _deleteToken() {
    _preferencesService.setToken('');
    _preferencesService.setValue(
        key: 'refreshToken', value: '');
    _preferencesService.setValue(key: 'userId', value: '');
    _preferencesService.setValue(key: 'userName', value: '');
  }
}