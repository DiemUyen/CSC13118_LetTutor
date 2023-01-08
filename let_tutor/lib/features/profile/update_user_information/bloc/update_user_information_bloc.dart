import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/user/learn_topics.dart';
import '../../../../data/models/user/test_preparation.dart';
import '../../../../data/models/user/user.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../generated/l10n.dart';

part 'update_user_information_event.dart';
part 'update_user_information_state.dart';

class UpdateUserInformationBloc
    extends Bloc<UpdateUserInformationEvent, UpdateUserInformationState> {
  UpdateUserInformationBloc({
    required UserRepository userRepository,
    this.username = "",
    this.country = "",
    this.phone = "",
    this.birthday = "",
    this.level = "",
    this.studySchedule = "",
  }) : super(const UpdateUserInformationState()) {
    _userRepository = userRepository;
    on<UpdateUserInformationLoaded>(_onLoaded);
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

  String username;
  String country;
  String phone;
  String birthday;
  String level;
  late List<String> filteredLearnTopics;
  late List<String> filteredTestPreparations;
  String studySchedule;
  late final UserRepository _userRepository;

  FutureOr<void> _onLoaded(UpdateUserInformationLoaded event,
      Emitter<UpdateUserInformationState> emit) async {
    emit(state.copyWith(status: UpdateUserInformationStatus.loading));

    filteredLearnTopics = [];
    filteredTestPreparations = [];

    try {
      var userResponse = await _userRepository.getUserInformation();
      username = userResponse.user?.name ?? '';
      country = userResponse.user?.country ?? '';
      phone = userResponse.user?.phone ?? '';
      birthday = userResponse.user?.birthday ?? '';
      level = userResponse.user?.level ?? '';
      studySchedule = userResponse.user?.studySchedule ?? '';
      userResponse.user?.learnTopics?.forEach((element) {
        filteredLearnTopics.add(element.id.toString());
      });
      userResponse.user?.testPreparations?.forEach((element) {
        filteredTestPreparations.add(element.id.toString());
      });

      var learnTopics = await _userRepository.getLearnTopics();
      var testPreparations = await _userRepository.getTestPreparation();

      emit(state.copyWith(
          user: userResponse.user,
          learnTopics: learnTopics,
          testPreparations: testPreparations,
          filteredLearnTopics: filteredLearnTopics,
          filteredTestPreparations: filteredTestPreparations,
          status: UpdateUserInformationStatus.loadFirstSuccess));
    } catch (exception) {
      emit(state.copyWith(status: UpdateUserInformationStatus.loadFailure));
    }
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
    emit(state.copyWith(status: UpdateUserInformationStatus.informationInvalid));
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
    emit(state.copyWith(status: UpdateUserInformationStatus.informationInvalid));
    birthday = event.birthday;
    emit(state.copyWith(status: UpdateUserInformationStatus.informationValid));
  }

  FutureOr<void> _onLevelFieldChanged(
      UpdateUserInformationLevelFieldChanged event,
      Emitter<UpdateUserInformationState> emit) {
    emit(state.copyWith(status: UpdateUserInformationStatus.informationInvalid));
    level = event.level;
    emit(state.copyWith(status: UpdateUserInformationStatus.informationValid));
  }

  FutureOr<void> _onWantToLearnFieldChanged(
      UpdateUserInformationWantToLearnFieldChanged event,
      Emitter<UpdateUserInformationState> emit) {
    emit(state.copyWith(status: UpdateUserInformationStatus.informationInvalid));

    if (event.learnTopicsId.isNotEmpty) {
      for (final topic in event.learnTopicsId) {
        if (filteredLearnTopics.contains(topic.id.toString())) {
          filteredLearnTopics.remove(topic.id.toString());
        } else {
          filteredLearnTopics.add(topic.id.toString());
        }
      }
    }
    if (event.testPreparationsId.isNotEmpty) {
      for (final topic in event.testPreparationsId) {
        if (filteredTestPreparations.contains(topic.id.toString())) {
          filteredTestPreparations.remove(topic.id.toString());
        } else {
          filteredTestPreparations.add(topic.id.toString());
        }
      }
    }

    emit(state.copyWith(
        filteredLearnTopics: filteredLearnTopics,
        filteredTestPreparations: filteredTestPreparations,
        status: UpdateUserInformationStatus.informationValid));
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

    updatedInformation['name'] = username;
    updatedInformation['country'] = country;
    updatedInformation['phone'] = phone;
    updatedInformation['birthday'] = birthday;
    updatedInformation['level'] = level;
    updatedInformation['studySchedule'] = studySchedule;
    updatedInformation['learnTopics'] = filteredLearnTopics;
    updatedInformation['testPreparations'] = filteredTestPreparations;

    try {
      var userResponse =
          await _userRepository.updateUserInformation(updatedInformation);
      emit(state.copyWith(
          user: userResponse.user,
          status: UpdateUserInformationStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: UpdateUserInformationStatus.loadFailure));
    }
  }
}
