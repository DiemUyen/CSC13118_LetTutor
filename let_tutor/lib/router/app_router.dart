import 'package:flutter/material.dart';
import 'package:let_tutor/data/models/schedule/next_schedule.dart';

import '../data/models/course/topics.dart';
import '../features/authentication/forgot_password/views/forgot_password_page.dart';
import '../features/authentication/sign_in/views/sign_in_page.dart';
import '../features/authentication/sign_up/views/sign_up_page.dart';
import '../features/course/course_detail/views/course_detail_page.dart';
import '../features/course/course_list/views/courses_list_page.dart';
import '../features/course/topic_detail/views/topic_detail_page.dart';
import '../features/home.dart';
import '../features/meeting/views/meeting_page.dart';
import '../features/profile/become_tutor_page.dart';
import '../features/profile/change_password/views/change_password_page.dart';
import '../features/profile/history_detail.dart';
import '../features/profile/history_list/views/history_list_page.dart';
import '../features/profile/my_courses_page.dart';
import '../features/profile/update_user_information/views/my_profile_page.dart';
import '../features/profile/profile_home/views/profile_home_page.dart';
import '../features/profile/schedule_detail/views/schedule_detail_page.dart';
import '../features/profile/schedule_list/views/schedule_list_page.dart';
import '../features/profile/wallet_page.dart';
import '../features/application/setting_page.dart';
import '../features/tutor/booking/view/booking_page.dart';
import '../features/tutor/tutor_detail/views/tutor_detail_page.dart';
import '../features/tutor/tutor_list/views/tutor_list_page.dart';
import '../features/tutor/feedback/views/tutor_reviews_page.dart';
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
          builder: (context) => TutorDetailPage(tutorId: settings.arguments as String,),
        );
      case bookingPage:
        return MaterialPageRoute(
          builder: (context) => BookingPage(tutorId: settings.arguments as String,),
        );
      case tutorReviewsPage:
        return MaterialPageRoute(
          builder: (context) => TutorReviewPage(tutorId: settings.arguments as String,),
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
          builder: (context) => CourseDetailPage(courseId: settings.arguments as String,),
        );
      case topicsPage:
        return MaterialPageRoute(
          builder: (context) => TopicsPage(topic: settings.arguments as Topics,),
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
          builder: (context) => ScheduleDetailPage(schedules: settings.arguments as List<NextSchedule>,),
        );
      case myHistoryPage:
        return MaterialPageRoute(
          builder: (context) => const HistoryPage(),
        );
      case historyDetailPage:
        return MaterialPageRoute(
          builder: (context) => HistoryDetail(historyInfo: settings.arguments as NextSchedule,),
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
          builder: (context) => MeetingPage(meetingLink: settings.arguments as String,),
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