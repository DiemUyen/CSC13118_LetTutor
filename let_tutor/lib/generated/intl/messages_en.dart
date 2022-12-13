// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "app_language": MessageLookupByLibrary.simpleMessage("Language"),
        "change_password":
            MessageLookupByLibrary.simpleMessage("Change Password"),
        "change_password_error":
            MessageLookupByLibrary.simpleMessage("Change Password Failed!"),
        "confirm_password":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "confirm_password_error": MessageLookupByLibrary.simpleMessage(
            "Confirm password does not match the new password"),
        "dark_mode": MessageLookupByLibrary.simpleMessage("Dark mode"),
        "email_empty":
            MessageLookupByLibrary.simpleMessage("Email address is not empty"),
        "email_not_found":
            MessageLookupByLibrary.simpleMessage("Email doesn\'t exist!"),
        "email_reset_password": MessageLookupByLibrary.simpleMessage(
            "Please enter your email address to search for your account."),
        "email_wrong_format": MessageLookupByLibrary.simpleMessage(
            "Email address is not right format"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "error_reset_password":
            MessageLookupByLibrary.simpleMessage("Error reset password"),
        "forgot_password":
            MessageLookupByLibrary.simpleMessage("Forgot Password"),
        "have_an_account":
            MessageLookupByLibrary.simpleMessage("Have an account?"),
        "new_password": MessageLookupByLibrary.simpleMessage("New password"),
        "not_have_account":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "old_password": MessageLookupByLibrary.simpleMessage("Old password"),
        "or": MessageLookupByLibrary.simpleMessage("or"),
        "password_empty":
            MessageLookupByLibrary.simpleMessage("Password is not empty"),
        "return_sign_in":
            MessageLookupByLibrary.simpleMessage("Return Sign In"),
        "send_link_reset_password":
            MessageLookupByLibrary.simpleMessage("Send Link"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Sign In"),
        "sign_in_failed":
            MessageLookupByLibrary.simpleMessage("Sign in failed!"),
        "sign_up": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "sign_up_failed":
            MessageLookupByLibrary.simpleMessage("Sign up failed!"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Vietnamese")
      };
}
