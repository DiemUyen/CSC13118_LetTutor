part of 'application_bloc.dart';

class ApplicationState extends Equatable {
  const ApplicationState({
    this.status = UIStatus.loading,
    this.locale = 'en',
    this.isDarkMode = false,
    this.authStatus = AuthStatus.initial,
  });

  final UIStatus status;
  final String locale;
  final bool isDarkMode;
  final AuthStatus authStatus;

  ApplicationState copyWith({
    UIStatus? status,
    String? locale,
    bool? isDarkMode,
    AuthStatus? authStatus,
  }) {
    return ApplicationState(
      status: status ?? this.status,
      locale: locale ?? this.locale,
      isDarkMode: isDarkMode ?? this.isDarkMode,
      authStatus: authStatus ?? this.authStatus,
    );
  }

  @override
  List<Object?> get props => [status, locale, isDarkMode];
}

enum UIStatus {
  initial,
  loading,
  loadSuccess,
  loadFailed,
}

enum AuthStatus {
  initial,
  unauthenticated,
  authenticated,
}