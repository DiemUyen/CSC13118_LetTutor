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

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Number phone`
  String get phone {
    return Intl.message(
      'Number phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Birthday`
  String get birthday {
    return Intl.message(
      'Birthday',
      name: 'birthday',
      desc: '',
      args: [],
    );
  }

  /// `Select your birthday`
  String get select_birthday {
    return Intl.message(
      'Select your birthday',
      name: 'select_birthday',
      desc: '',
      args: [],
    );
  }

  /// `Study Schedule`
  String get study_schedule {
    return Intl.message(
      'Study Schedule',
      name: 'study_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get save_changes {
    return Intl.message(
      'Save Changes',
      name: 'save_changes',
      desc: '',
      args: [],
    );
  }

  /// `Others review you`
  String get others_review {
    return Intl.message(
      'Others review you',
      name: 'others_review',
      desc: '',
      args: [],
    );
  }

  /// `Username is not empty`
  String get username_empty {
    return Intl.message(
      'Username is not empty',
      name: 'username_empty',
      desc: '',
      args: [],
    );
  }

  /// `Update Failed!`
  String get update_failed {
    return Intl.message(
      'Update Failed!',
      name: 'update_failed',
      desc: '',
      args: [],
    );
  }

  /// `Update Success!`
  String get update_success {
    return Intl.message(
      'Update Success!',
      name: 'update_success',
      desc: '',
      args: [],
    );
  }

  /// `Enter a course name`
  String get search_course {
    return Intl.message(
      'Enter a course name',
      name: 'search_course',
      desc: '',
      args: [],
    );
  }

  /// `Sort by level`
  String get sort_level {
    return Intl.message(
      'Sort by level',
      name: 'sort_level',
      desc: '',
      args: [],
    );
  }

  /// `Level increasing`
  String get level_increasing {
    return Intl.message(
      'Level increasing',
      name: 'level_increasing',
      desc: '',
      args: [],
    );
  }

  /// `Level decreasing`
  String get level_decreasing {
    return Intl.message(
      'Level decreasing',
      name: 'level_decreasing',
      desc: '',
      args: [],
    );
  }

  /// `Course`
  String get course {
    return Intl.message(
      'Course',
      name: 'course',
      desc: '',
      args: [],
    );
  }

  /// `E-book`
  String get ebook {
    return Intl.message(
      'E-book',
      name: 'ebook',
      desc: '',
      args: [],
    );
  }

  /// `Interactive E-book`
  String get interactive_ebook {
    return Intl.message(
      'Interactive E-book',
      name: 'interactive_ebook',
      desc: '',
      args: [],
    );
  }

  /// `Select level`
  String get choose_level {
    return Intl.message(
      'Select level',
      name: 'choose_level',
      desc: '',
      args: [],
    );
  }

  /// `Select category`
  String get choose_categories {
    return Intl.message(
      'Select category',
      name: 'choose_categories',
      desc: '',
      args: [],
    );
  }

  /// `No Data`
  String get no_data {
    return Intl.message(
      'No Data',
      name: 'no_data',
      desc: '',
      args: [],
    );
  }

  /// `Discover`
  String get discover {
    return Intl.message(
      'Discover',
      name: 'discover',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get overview {
    return Intl.message(
      'Overview',
      name: 'overview',
      desc: '',
      args: [],
    );
  }

  /// `Experience Level`
  String get experience_level {
    return Intl.message(
      'Experience Level',
      name: 'experience_level',
      desc: '',
      args: [],
    );
  }

  /// `Course Length`
  String get course_length {
    return Intl.message(
      'Course Length',
      name: 'course_length',
      desc: '',
      args: [],
    );
  }

  /// `List Topics`
  String get list_topics {
    return Intl.message(
      'List Topics',
      name: 'list_topics',
      desc: '',
      args: [],
    );
  }

  /// `Suggested Tutors`
  String get suggested_tutors {
    return Intl.message(
      'Suggested Tutors',
      name: 'suggested_tutors',
      desc: '',
      args: [],
    );
  }

  /// `Why take this course?`
  String get why_take_course {
    return Intl.message(
      'Why take this course?',
      name: 'why_take_course',
      desc: '',
      args: [],
    );
  }

  /// `What will you be able to do?`
  String get what_able_to_do {
    return Intl.message(
      'What will you be able to do?',
      name: 'what_able_to_do',
      desc: '',
      args: [],
    );
  }

  /// `Load Failed!`
  String get load_failed {
    return Intl.message(
      'Load Failed!',
      name: 'load_failed',
      desc: '',
      args: [],
    );
  }

  /// `More Info`
  String get more_info {
    return Intl.message(
      'More Info',
      name: 'more_info',
      desc: '',
      args: [],
    );
  }

  /// `Topics`
  String get topics {
    return Intl.message(
      'Topics',
      name: 'topics',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming Lesson`
  String get upcoming_lesson {
    return Intl.message(
      'Upcoming Lesson',
      name: 'upcoming_lesson',
      desc: '',
      args: [],
    );
  }

  /// `Enter lesson room`
  String get enter_lesson_room {
    return Intl.message(
      'Enter lesson room',
      name: 'enter_lesson_room',
      desc: '',
      args: [],
    );
  }

  /// `Reset filters`
  String get reset_filters {
    return Intl.message(
      'Reset filters',
      name: 'reset_filters',
      desc: '',
      args: [],
    );
  }

  /// `Enter tutor name`
  String get search_tutor_name {
    return Intl.message(
      'Enter tutor name',
      name: 'search_tutor_name',
      desc: '',
      args: [],
    );
  }

  /// `Foreign Tutor`
  String get foreign_tutor {
    return Intl.message(
      'Foreign Tutor',
      name: 'foreign_tutor',
      desc: '',
      args: [],
    );
  }

  /// `Vietnamese Tutor`
  String get vietnamese_tutor {
    return Intl.message(
      'Vietnamese Tutor',
      name: 'vietnamese_tutor',
      desc: '',
      args: [],
    );
  }

  /// `Native English Tutor`
  String get native_english_tutor {
    return Intl.message(
      'Native English Tutor',
      name: 'native_english_tutor',
      desc: '',
      args: [],
    );
  }

  /// `Select tutor nationality`
  String get select_tutor_nationality {
    return Intl.message(
      'Select tutor nationality',
      name: 'select_tutor_nationality',
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
