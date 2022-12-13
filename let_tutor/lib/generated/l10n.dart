// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Dark mode`
  String get dark_mode {
    return Intl.message(
      'Dark mode',
      name: 'dark_mode',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get app_language {
    return Intl.message(
      'Language',
      name: 'app_language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Vietnamese`
  String get vietnamese {
    return Intl.message(
      'Vietnamese',
      name: 'vietnamese',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgot_password {
    return Intl.message(
      'Forgot Password',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email address to search for your account.`
  String get email_reset_password {
    return Intl.message(
      'Please enter your email address to search for your account.',
      name: 'email_reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Email doesn't exist!`
  String get email_not_found {
    return Intl.message(
      'Email doesn\'t exist!',
      name: 'email_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Send Link`
  String get send_link_reset_password {
    return Intl.message(
      'Send Link',
      name: 'send_link_reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Email address is not empty`
  String get email_empty {
    return Intl.message(
      'Email address is not empty',
      name: 'email_empty',
      desc: '',
      args: [],
    );
  }

  /// `Email address is not right format`
  String get email_wrong_format {
    return Intl.message(
      'Email address is not right format',
      name: 'email_wrong_format',
      desc: '',
      args: [],
    );
  }

  /// `Password is not empty`
  String get password_empty {
    return Intl.message(
      'Password is not empty',
      name: 'password_empty',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get not_have_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'not_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Return Sign In`
  String get return_sign_in {
    return Intl.message(
      'Return Sign In',
      name: 'return_sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Error reset password`
  String get error_reset_password {
    return Intl.message(
      'Error reset password',
      name: 'error_reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign in failed!`
  String get sign_in_failed {
    return Intl.message(
      'Sign in failed!',
      name: 'sign_in_failed',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Sign up failed!`
  String get sign_up_failed {
    return Intl.message(
      'Sign up failed!',
      name: 'sign_up_failed',
      desc: '',
      args: [],
    );
  }

  /// `Have an account?`
  String get have_an_account {
    return Intl.message(
      'Have an account?',
      name: 'have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password does not match the new password`
  String get confirm_password_error {
    return Intl.message(
      'Confirm password does not match the new password',
      name: 'confirm_password_error',
      desc: '',
      args: [],
    );
  }

  /// `Old password`
  String get old_password {
    return Intl.message(
      'Old password',
      name: 'old_password',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get new_password {
    return Intl.message(
      'New password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirm_password {
    return Intl.message(
      'Confirm password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Change Password Failed!`
  String get change_password_error {
    return Intl.message(
      'Change Password Failed!',
      name: 'change_password_error',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
