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

  /// `Book Now`
  String get book_now {
    return Intl.message(
      'Book Now',
      name: 'book_now',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Specialties`
  String get specialties {
    return Intl.message(
      'Specialties',
      name: 'specialties',
      desc: '',
      args: [],
    );
  }

  /// `Suggested Courses`
  String get suggested_courses {
    return Intl.message(
      'Suggested Courses',
      name: 'suggested_courses',
      desc: '',
      args: [],
    );
  }

  /// `Interests`
  String get interests {
    return Intl.message(
      'Interests',
      name: 'interests',
      desc: '',
      args: [],
    );
  }

  /// `Teaching experience`
  String get teaching_experience {
    return Intl.message(
      'Teaching experience',
      name: 'teaching_experience',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Level`
  String get level {
    return Intl.message(
      'Level',
      name: 'level',
      desc: '',
      args: [],
    );
  }

  /// `Want to learn`
  String get want_to_learn {
    return Intl.message(
      'Want to learn',
      name: 'want_to_learn',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password is not empty`
  String get confirm_password_empty {
    return Intl.message(
      'Confirm password is not empty',
      name: 'confirm_password_empty',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get my_profile {
    return Intl.message(
      'My Profile',
      name: 'my_profile',
      desc: '',
      args: [],
    );
  }

  /// `My Wallet`
  String get my_wallet {
    return Intl.message(
      'My Wallet',
      name: 'my_wallet',
      desc: '',
      args: [],
    );
  }

  /// `My Schedule`
  String get my_schedule {
    return Intl.message(
      'My Schedule',
      name: 'my_schedule',
      desc: '',
      args: [],
    );
  }

  /// `My History`
  String get my_history {
    return Intl.message(
      'My History',
      name: 'my_history',
      desc: '',
      args: [],
    );
  }

  /// `My Course`
  String get my_course {
    return Intl.message(
      'My Course',
      name: 'my_course',
      desc: '',
      args: [],
    );
  }

  /// `Become a Tutor`
  String get become_a_tutor {
    return Intl.message(
      'Become a Tutor',
      name: 'become_a_tutor',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get log_out {
    return Intl.message(
      'Log Out',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `Save Request Failed!`
  String get save_request_fail {
    return Intl.message(
      'Save Request Failed!',
      name: 'save_request_fail',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Schedule Failed!`
  String get cancel_schedule_fail {
    return Intl.message(
      'Cancel Schedule Failed!',
      name: 'cancel_schedule_fail',
      desc: '',
      args: [],
    );
  }

  /// `Successfully Save Request`
  String get save_request_success {
    return Intl.message(
      'Successfully Save Request',
      name: 'save_request_success',
      desc: '',
      args: [],
    );
  }

  /// `Direct Message`
  String get direct_message {
    return Intl.message(
      'Direct Message',
      name: 'direct_message',
      desc: '',
      args: [],
    );
  }

  /// `Lesson Time`
  String get lesson_time {
    return Intl.message(
      'Lesson Time',
      name: 'lesson_time',
      desc: '',
      args: [],
    );
  }

  /// `Confirm cancel booking`
  String get confirm_cancel_booking {
    return Intl.message(
      'Confirm cancel booking',
      name: 'confirm_cancel_booking',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to cancel booking lesson with`
  String get cancel_booking_message {
    return Intl.message(
      'Are you sure to cancel booking lesson with',
      name: 'cancel_booking_message',
      desc: '',
      args: [],
    );
  }

  /// `Discard`
  String get discard {
    return Intl.message(
      'Discard',
      name: 'discard',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Request for Lesson`
  String get request_for_lesson {
    return Intl.message(
      'Request for Lesson',
      name: 'request_for_lesson',
      desc: '',
      args: [],
    );
  }

  /// `Go to meeting`
  String get go_meeting {
    return Intl.message(
      'Go to meeting',
      name: 'go_meeting',
      desc: '',
      args: [],
    );
  }

  /// `No request for lesson.`
  String get no_request_lesson {
    return Intl.message(
      'No request for lesson.',
      name: 'no_request_lesson',
      desc: '',
      args: [],
    );
  }

  /// `Student request is not empty`
  String get student_request_empty {
    return Intl.message(
      'Student request is not empty',
      name: 'student_request_empty',
      desc: '',
      args: [],
    );
  }

  /// `Save Request`
  String get save_request {
    return Intl.message(
      'Save Request',
      name: 'save_request',
      desc: '',
      args: [],
    );
  }

  /// `Schedule`
  String get schedule {
    return Intl.message(
      'Schedule',
      name: 'schedule',
      desc: '',
      args: [],
    );
  }

  /// `Load Schedule Failed!`
  String get load_schedule_fail {
    return Intl.message(
      'Load Schedule Failed!',
      name: 'load_schedule_fail',
      desc: '',
      args: [],
    );
  }

  /// `Please try again.`
  String get try_again {
    return Intl.message(
      'Please try again.',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `Review from Tutor`
  String get review_from_tutor {
    return Intl.message(
      'Review from Tutor',
      name: 'review_from_tutor',
      desc: '',
      args: [],
    );
  }

  /// `No review`
  String get no_review {
    return Intl.message(
      'No review',
      name: 'no_review',
      desc: '',
      args: [],
    );
  }

  /// `Record session`
  String get record_session {
    return Intl.message(
      'Record session',
      name: 'record_session',
      desc: '',
      args: [],
    );
  }

  /// `Rating`
  String get rating {
    return Intl.message(
      'Rating',
      name: 'rating',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get report {
    return Intl.message(
      'Report',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `Booking result`
  String get booking_detail {
    return Intl.message(
      'Booking result',
      name: 'booking_detail',
      desc: '',
      args: [],
    );
  }

  /// `Booking success`
  String get booking_success {
    return Intl.message(
      'Booking success',
      name: 'booking_success',
      desc: '',
      args: [],
    );
  }

  /// `Booking failed`
  String get booking_fail {
    return Intl.message(
      'Booking failed',
      name: 'booking_fail',
      desc: '',
      args: [],
    );
  }

  /// `Booking available date`
  String get booking_date {
    return Intl.message(
      'Booking available date',
      name: 'booking_date',
      desc: '',
      args: [],
    );
  }

  /// `Booking available time`
  String get booking_time {
    return Intl.message(
      'Booking available time',
      name: 'booking_time',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `1 lesson`
  String get a_lesson {
    return Intl.message(
      '1 lesson',
      name: 'a_lesson',
      desc: '',
      args: [],
    );
  }

  /// `Confirm booking`
  String get confirm_booking {
    return Intl.message(
      'Confirm booking',
      name: 'confirm_booking',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to book lesson at`
  String get confirm_booking_message {
    return Intl.message(
      'Are you sure to book lesson at',
      name: 'confirm_booking_message',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get favorite {
    return Intl.message(
      'Favorite',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `This tutor is annoying me`
  String get tutor_annoy {
    return Intl.message(
      'This tutor is annoying me',
      name: 'tutor_annoy',
      desc: '',
      args: [],
    );
  }

  /// `This profile is pretending be someone or is fake`
  String get tutor_fake {
    return Intl.message(
      'This profile is pretending be someone or is fake',
      name: 'tutor_fake',
      desc: '',
      args: [],
    );
  }

  /// `Inappropriate profile photo`
  String get tutor_image {
    return Intl.message(
      'Inappropriate profile photo',
      name: 'tutor_image',
      desc: '',
      args: [],
    );
  }

  /// `Help us understand what\'s happening?`
  String get help_us_report {
    return Intl.message(
      'Help us understand what\\\'s happening?',
      name: 'help_us_report',
      desc: '',
      args: [],
    );
  }

  /// `Please let us know details about your problem`
  String get help_detail {
    return Intl.message(
      'Please let us know details about your problem',
      name: 'help_detail',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `starts in`
  String get start_in {
    return Intl.message(
      'starts in',
      name: 'start_in',
      desc: '',
      args: [],
    );
  }

  /// `Total lesson time is`
  String get total_lesson {
    return Intl.message(
      'Total lesson time is',
      name: 'total_lesson',
      desc: '',
      args: [],
    );
  }

  /// `hours`
  String get hour {
    return Intl.message(
      'hours',
      name: 'hour',
      desc: '',
      args: [],
    );
  }

  /// `minutes`
  String get minute {
    return Intl.message(
      'minutes',
      name: 'minute',
      desc: '',
      args: [],
    );
  }

  /// `Tutor`
  String get tutor {
    return Intl.message(
      'Tutor',
      name: 'tutor',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Lessons`
  String get lessons {
    return Intl.message(
      'Lessons',
      name: 'lessons',
      desc: '',
      args: [],
    );
  }

  /// `Book`
  String get book {
    return Intl.message(
      'Book',
      name: 'book',
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
