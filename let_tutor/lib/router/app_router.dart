import 'package:flutter/material.dart';

import '../features/authentication/forgot_password/views/forgot_password_page.dart';
import '../features/authentication/sign_in/views/sign_in_page.dart';
import '../features/authentication/sign_up/views/sign_up_page.dart';
import '../features/course/course_detail.dart';
import '../features/course/courses_page.dart';
import '../features/course/topics_page.dart';
import '../features/home.dart';
import '../features/meeting_page.dart';
import '../features/profile/become_tutor_page.dart';
import '../features/profile/change_password_page.dart';
import '../features/profile/history_detail.dart';
import '../features/profile/history_page.dart';
import '../features/profile/my_courses_page.dart';
import '../features/profile/my_profile_page.dart';
import '../features/profile/profile_home_page.dart';
import '../features/profile/schedule_detail.dart';
import '../features/profile/schedule_page.dart';
import '../features/profile/wallet_page.dart';
import '../features/setting_page.dart';
import '../features/tutor/booking_page.dart';
import '../features/tutor/tutor_detail.dart';
import '../features/tutor/tutor_home_page.dart';
import '../features/tutor/tutor_reviews.dart';
import '../features/tutor/write_review.dart';
import '../features/unknown_page.dart';


class AppRouter {
  AppRouter._();

  // Authentication pages
  static const String signInPage = '/signIn';
  static const String signUpPage = '/signUp';
  static const String forgotPasswordPage = '/forgotPassword';

  // Home page
  static const String homePage = '/home';

  // Tutor pages
  static const String tutorHomePage = '/tutorHome';
  static const String tutorDetailPage = '/tutorDetail';
  static const String bookingPage = '/booking';
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
  static const String scheduleDetailPage = '/scheduleDetail';
  static const String myHistoryPage = '/myHistory';
  static const String historyDetailPage = '/historyDetail';
  static const String myCoursesPage = '/myCourses';
  static const String changePasswordPage = '/changePassword';
  static const String becomeTutorPage = '/becomeTutor';

  // Meeting page
  static const String meetingPage = '/meeting';

  // Setting page
  static const String settingPage = '/setting';

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
          builder: (context) => const ForgotPasswordPage(),
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
      case bookingPage:
        return MaterialPageRoute(
          builder: (context) => const BookingPage(),
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
      case scheduleDetailPage:
        return MaterialPageRoute(
          builder: (context) => const ScheduleDetail(),
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