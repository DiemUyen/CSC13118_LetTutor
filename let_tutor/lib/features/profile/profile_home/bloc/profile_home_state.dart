part of 'profile_home_bloc.dart';

abstract class ProfileHomeState extends Equatable {
  const ProfileHomeState();
}

class ProfileHomeInit extends ProfileHomeState {
  const ProfileHomeInit();

  @override
  List<Object?> get props => [];
}

class ProfileHomeLoading extends ProfileHomeState {
  const ProfileHomeLoading();

  @override
  List<Object?> get props => [];
}

class ProfileHomeLoadSuccess extends ProfileHomeState {
  const ProfileHomeLoadSuccess();

  @override
  List<Object?> get props => [];
}

class ProfileHomeLoadFailure extends ProfileHomeState {
  const ProfileHomeLoadFailure();

  @override
  List<Object?> get props => [];
}