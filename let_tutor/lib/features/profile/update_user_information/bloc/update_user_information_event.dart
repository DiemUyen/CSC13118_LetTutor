part of 'update_user_information_bloc.dart';

abstract class UpdateUserInformationEvent extends Equatable {
  const UpdateUserInformationEvent();
}

class UpdateUserInformationLoaded extends UpdateUserInformationEvent {
  @override
  List<Object?> get props => [];
}

class UpdateUserInformationAvatarChanged extends UpdateUserInformationEvent {
  final String avatarUrl;

  const UpdateUserInformationAvatarChanged({required this.avatarUrl});

  @override
  List<Object?> get props => [avatarUrl];
}

class UpdateUserInformationUsernameFieldChanged extends UpdateUserInformationEvent {
  final String username;

  const UpdateUserInformationUsernameFieldChanged({required this.username});

  @override
  List<Object?> get props => [username];
}

class UpdateUserInformationCountryFieldChanged extends UpdateUserInformationEvent {
  final String country;

  const UpdateUserInformationCountryFieldChanged({required this.country});

  @override
  List<Object?> get props => [country];
}

class UpdateUserInformationPhoneFieldChanged extends UpdateUserInformationEvent {
  final String phone;

  const UpdateUserInformationPhoneFieldChanged({required this.phone});

  @override
  List<Object?> get props => [phone];
}

class UpdateUserInformationBirthdayFieldChanged extends UpdateUserInformationEvent {
  final String birthday;

  const UpdateUserInformationBirthdayFieldChanged({required this.birthday});

  @override
  List<Object?> get props => [birthday];
}

class UpdateUserInformationLevelFieldChanged extends UpdateUserInformationEvent {
  final String level;

  const UpdateUserInformationLevelFieldChanged({required this.level});

  @override
  List<Object?> get props => [level];
}

class UpdateUserInformationWantToLearnFieldChanged extends UpdateUserInformationEvent {
  final String wantToLearn;

  const UpdateUserInformationWantToLearnFieldChanged({required this.wantToLearn});

  @override
  List<Object?> get props => [wantToLearn];
}

class UpdateUserInformationStudyScheduleFieldChanged extends UpdateUserInformationEvent {
  final String studySchedule;

  const UpdateUserInformationStudyScheduleFieldChanged({required this.studySchedule});

  @override
  List<Object?> get props => [studySchedule];
}

class UpdateUserInformationSaveChangesButtonPressed extends UpdateUserInformationEvent {
  @override
  List<Object?> get props => [];
}