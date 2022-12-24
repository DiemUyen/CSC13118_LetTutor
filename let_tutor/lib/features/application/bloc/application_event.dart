part of 'application_bloc.dart';

class ApplicationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ApplicationLoaded extends ApplicationEvent {}

class ApplicationLocaleChanged extends ApplicationEvent {
  ApplicationLocaleChanged({required this.locale});

  final String locale;

  @override
  List<Object?> get props => [locale];
}

class ApplicationDarkModeChanged extends ApplicationEvent {
  ApplicationDarkModeChanged({
    required this.enable,
  });

  final bool enable;

  @override
  List<Object?> get props => [enable];
}
