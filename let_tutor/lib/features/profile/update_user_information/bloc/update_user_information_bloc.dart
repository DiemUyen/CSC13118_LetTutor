import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_tutor/services/shared_preferences_service.dart';

import '../../../../data/models/user/user.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../generated/l10n.dart';
import '../../../../injector/injector.dart';

part 'update_user_information_event.dart';
part 'update_user_information_state.dart';

class UpdateUserInformationBloc
    extends Bloc<UpdateUserInformationEvent, UpdateUserInformationState> {
  UpdateUserInformationBloc({
    required UserRepository userRepository,
    this.avatarUrl = "",
    this.username = "",
    this.country = "",
    this.phone = "",
    this.birthday = "",
    this.level = "",
    //this.wantToLearn = "",
    this.studySchedule = "",
  }) : super(const UpdateUserInformationState()) {
    _userRepository = userRepository;
    _preferencesService = Injector.instance<SharedPreferencesService>();
    on<UpdateUserInformationLoaded>(_onLoaded);
    on<UpdateUserInformationAvatarChanged>(_onAvatarChanged);
    on<UpdateUserInformationUsernameFieldChanged>(_onUsernameFieldChanged);
    on<UpdateUserInformationCountryFieldChanged>(_onCountryFieldChanged);
    on<UpdateUserInformationPhoneFieldChanged>(_onPhoneFieldChanged);
    on<UpdateUserInformationBirthdayFieldChanged>(_onBirthdayFieldChanged);
    on<UpdateUserInformationLevelFieldChanged>(_onLevelFieldChanged);
    on<UpdateUserInformationWantToLearnFieldChanged>(
        _onWantToLearnFieldChanged);
    on<UpdateUserInformationStudyScheduleFieldChanged>(
        _onStudyScheduleFieldChanged);
    on<UpdateUserInformationSaveChangesButtonPressed>(
        _onSaveChangesButtonPressed);

    add(UpdateUserInformationLoaded());
  }

  String avatarUrl;
  String username;
  String country;
  String phone;
  String birthday;
  String level;
  //String wantToLearn;
  String studySchedule;
  late final UserRepository _userRepository;
  late final SharedPreferencesService _preferencesService;

  FutureOr<void> _onLoaded(UpdateUserInformationLoaded event,
      Emitter<UpdateUserInformationState> emit) async {
    emit(state.copyWith(status: UpdateUserInformationStatus.loading));

    try {
      var userResponse = await _userRepository.getUserInformation();
      avatarUrl = userResponse.user?.avatar ?? '';
      username = userResponse.user?.name ?? '';
      country = userResponse.user?.country ?? '';
      phone = userResponse.user?.phone ?? '';
      birthday = userResponse.user?.birthday ?? '';
      level = userResponse.user?.level ?? '';
      studySchedule = userResponse.user?.studySchedule ?? '';

      emit(state.copyWith(
          user: userResponse.user,
          status: UpdateUserInformationStatus.loadFirstSuccess));
    } catch (exception) {
      emit(state.copyWith(status: UpdateUserInformationStatus.loadFailure));
    }
  }

  FutureOr<void> _onAvatarChanged(UpdateUserInformationAvatarChanged event,
      Emitter<UpdateUserInformationState> emit) async {
    event.avatarUrl.isNotEmpty
        ? avatarUrl = event.avatarUrl
        : avatarUrl = avatarUrl;
  }

  FutureOr<void> _onUsernameFieldChanged(
      UpdateUserInformationUsernameFieldChanged event,
      Emitter<UpdateUserInformationState> emit) {
    username = event.username;

    if (username.isEmpty) {
      emit(state.copyWith(
          usernameError: S.current.username_empty,
          status: UpdateUserInformationStatus.informationInvalid));
    } else {
      emit(state.copyWith(
          usernameError: '',
          status: UpdateUserInformationStatus.informationValid));
    }
  }

  FutureOr<void> _onCountryFieldChanged(
      UpdateUserInformationCountryFieldChanged event,
      Emitter<UpdateUserInformationState> emit) {
    country = event.country;
    emit(state.copyWith(status: UpdateUserInformationStatus.informationValid));
  }

  FutureOr<void> _onPhoneFieldChanged(
      UpdateUserInformationPhoneFieldChanged event,
      Emitter<UpdateUserInformationState> emit) {
    phone = event.phone;
    emit(state.copyWith(status: UpdateUserInformationStatus.informationValid));
  }

  FutureOr<void> _onBirthdayFieldChanged(
      UpdateUserInformationBirthdayFieldChanged event,
      Emitter<UpdateUserInformationState> emit) {
    if (kDebugMode) {
      print('Event birthday ${event.birthday}');
    }
    birthday = event.birthday;
    emit(state.copyWith(status: UpdateUserInformationStatus.informationValid));
  }

  FutureOr<void> _onLevelFieldChanged(
      UpdateUserInformationLevelFieldChanged event,
      Emitter<UpdateUserInformationState> emit) {
    level = event.level;
    emit(state.copyWith(status: UpdateUserInformationStatus.informationValid));
  }

  FutureOr<void> _onWantToLearnFieldChanged(
      UpdateUserInformationWantToLearnFieldChanged event,
      Emitter<UpdateUserInformationState> emit) {
    //wantToLearn = event.wantToLearn;
  }

  FutureOr<void> _onStudyScheduleFieldChanged(
      UpdateUserInformationStudyScheduleFieldChanged event,
      Emitter<UpdateUserInformationState> emit) {
    studySchedule = event.studySchedule;
    emit(state.copyWith(status: UpdateUserInformationStatus.informationValid));
  }

  FutureOr<void> _onSaveChangesButtonPressed(
      UpdateUserInformationSaveChangesButtonPressed event,
      Emitter<UpdateUserInformationState> emit) async {
    emit(state.copyWith(status: UpdateUserInformationStatus.loading));

    Map<String, dynamic> updatedInformation = {};

    updatedInformation['avatar'] = avatarUrl;
    updatedInformation['name'] = username;
    updatedInformation['country'] = country;
    updatedInformation['phone'] = phone;
    updatedInformation['birthday'] = birthday;
    updatedInformation['level'] = level;
    updatedInformation['studySchedule'] = studySchedule;

    try {
      var userResponse =
          await _userRepository.updateUserInformation(updatedInformation);
      _preferencesService.setValue(
          key: 'userName', value: userResponse.user?.name ?? '');
      emit(state.copyWith(
          user: userResponse.user,
          status: UpdateUserInformationStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: UpdateUserInformationStatus.loadFailure));
    }
  }
}
