import 'package:flutter/material.dart';
import 'package:let_tutor/routes/authentication/forgot_password.dart';
import 'package:let_tutor/routes/authentication/sign_in_form.dart';
import 'package:let_tutor/routes/authentication/sign_up_form.dart';
import 'package:let_tutor/routes/course/courses_page.dart';
import 'package:let_tutor/routes/course/course_detail.dart';
import 'package:let_tutor/routes/course/topics_page.dart';
import 'package:let_tutor/routes/home.dart';
import 'package:let_tutor/routes/meeting_page.dart';
import 'package:let_tutor/routes/profile/become_tutor_page.dart';
import 'package:let_tutor/routes/profile/change_password_page.dart';
import 'package:let_tutor/routes/profile/history_detail.dart';
import 'package:let_tutor/routes/profile/history_page.dart';
import 'package:let_tutor/routes/profile/my_courses_page.dart';
import 'package:let_tutor/routes/profile/my_profile_page.dart';
import 'package:let_tutor/routes/profile/profile_home_page.dart';
import 'package:let_tutor/routes/profile/schedule_page.dart';
import 'package:let_tutor/routes/profile/wallet_page.dart';
import 'package:let_tutor/routes/setting_page.dart';
import 'package:let_tutor/routes/tutor/tutor_detail.dart';
import 'package:let_tutor/routes/tutor/tutor_home_page.dart';
import 'package:let_tutor/routes/tutor/tutor_reviews.dart';
import 'package:let_tutor/routes/tutor/write_review.dart';
import 'package:let_tutor/routes/unknown_page.dart';


class RouteGenerator {
  // Authentication pages
  static const String signInPage = '/signIn';
  static const String signUpPage = '/signUp';
  static const String forgotPasswordPage = '/forgotPassword';

  // Home page
  static const String homePage = '/home';

  // Tutor pages
  static const String tutorHomePage = '/tutorHome';
  static const String tutorDetailPage = '/tutorDetail';
  static const String tutorReviewsPage = '/tutorReviews';
  static const String writingReviewPage = '/writingReview';

  // Course pages
  static const String coursesHomePage = '/coursesHome';
  static const String courseDetailPage = '/courseDetail';
  static const String topicsPage = '/topics';

  // Profile pages
  static const String profileHomePage = '/profileHome';
  static const String myProfilePage = '/myProfile';
  static const String myWalletPage = '/myWallet';
  static const String mySchedulePage = '/mySchedule';
  static const String myHistoryPage = '/myHistory';
  static const String historyDetailPage = '/historyDetail';
  static const String myCoursesPage = '/myCourses';
  static const String changePasswordPage = '/changePassword';
  static const String becomeTutorPage = '/becomeTutor';

  // Meeting page
  static const String meetingPage = '/meeting';

  // Setting page
  static const String settingPage = '/setting';


  // Private constructor
  RouteGenerator._();


  // Generate route
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signInPage:
        return MaterialPageRoute(
          builder: (context) => const SignInForm(),
        );
      case signUpPage:
        return MaterialPageRoute(
          builder: (context) => const SignUpForm(),
        );
      case forgotPasswordPage:
        return MaterialPageRoute(
          builder: (context) => const ForgotPassword(),
        );
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const Home(),
        );
      case tutorHomePage:
        return MaterialPageRoute(
          builder: (context) => const TutorHomePage(),
        );
      case tutorDetailPage:
        return MaterialPageRoute(
          builder: (context) => const TutorDetail(),
        );
      case tutorReviewsPage:
        return MaterialPageRoute(
          builder: (context) => const TutorReviewPage(),
        );
      case writingReviewPage:
        return MaterialPageRoute(
          builder: (context) => const WritingReviewPage(),
        );
      case coursesHomePage:
        return MaterialPageRoute(
          builder: (context) => const CoursesPage(),
        );
      case courseDetailPage:
        return MaterialPageRoute(
          builder: (context) => const CourseDetail(),
        );
      case topicsPage:
        return MaterialPageRoute(
          builder: (context) => const TopicsPage(),
        );
      case profileHomePage:
        return MaterialPageRoute(
          builder: (context) => const ProfileHomePage(),
        );
      case myProfilePage:
        return MaterialPageRoute(
          builder: (context) => const MyProfilePage(),
        );
      case myWalletPage:
        return MaterialPageRoute(
          builder: (context) => const WalletPage(),
        );
      case mySchedulePage:
        return MaterialPageRoute(
          builder: (context) => const SchedulePage(),
        );
      case myHistoryPage:
        return MaterialPageRoute(
          builder: (context) => const HistoryPage(),
        );
      case historyDetailPage:
        return MaterialPageRoute(
          builder: (context) => const HistoryDetail(),
        );
      case myCoursesPage:
        return MaterialPageRoute(
          builder: (context) => const MyCoursesPage(),
        );
      case changePasswordPage:
        return MaterialPageRoute(
          builder: (context) => const ChangePasswordPage(),
        );
      case becomeTutorPage:
        return MaterialPageRoute(
          builder: (context) => const BecomeTutorPage(),
        );
      case meetingPage:
        return MaterialPageRoute(
          builder: (context) => const MeetingPage(),
        );
      case settingPage:
        return MaterialPageRoute(
          builder: (context) => const SettingsPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const UnknownPage(),
        );
    }
  }
}