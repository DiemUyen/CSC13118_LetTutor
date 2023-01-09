part of 'profile_home_bloc.dart';

abstract class ProfileHomeEvent extends Equatable {
  const ProfileHomeEvent();
}

class ProfileHomeMyProfileButtonPressed extends ProfileHomeEvent {
  const ProfileHomeMyProfileButtonPressed();

  @override
  List<Object?> get props => [];
}

class ProfileHomeMyWalletButtonPressed extends ProfileHomeEvent {
  const ProfileHomeMyWalletButtonPressed();

  @override
  List<Object?> get props => [];
}

class ProfileHomeMyScheduleButtonPressed extends ProfileHomeEvent {
  const ProfileHomeMyScheduleButtonPressed();

  @override
  List<Object?> get props => [];
}

class ProfileHomeMyHistoryButtonPressed extends ProfileHomeEvent {
  const ProfileHomeMyHistoryButtonPressed();

  @override
  List<Object?> get props => [];
}

class ProfileHomeMyCoursesButtonPressed extends ProfileHomeEvent {
  const ProfileHomeMyCoursesButtonPressed();

  @override
  List<Object?> get props => [];
}

class ProfileHomeChangePasswordButtonPressed extends ProfileHomeEvent {
  const ProfileHomeChangePasswordButtonPressed();

  @override
  List<Object?> get props => [];
}

class ProfileHomeBecomeTutorButtonPressed extends ProfileHomeEvent {
  const ProfileHomeBecomeTutorButtonPressed();

  @override
  List<Object?> get props => [];
}

class ProfileHomeLogOutButtonPressed extends ProfileHomeEvent {
  const ProfileHomeLogOutButtonPressed();

  @override
  List<Object?> get props => [];
}