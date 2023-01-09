import 'package:let_tutor/injector/injector.dart';

import '../features/application/bloc/application_bloc.dart';
import '../features/authentication/forgot_password/bloc/forgot_password_bloc.dart';
import '../features/authentication/sign_in/bloc/sign_in_bloc.dart';
import '../features/authentication/sign_up/bloc/sign_up_bloc.dart';
import '../features/course/course_detail/bloc/course_detail_bloc.dart';
import '../features/course/course_list/bloc/course_list_bloc.dart';
import '../features/course/topic_detail/bloc/topic_detail_bloc.dart';
import '../features/meeting/bloc/meeting_bloc.dart';
import '../features/profile/change_password/bloc/change_password_bloc.dart';
import '../features/profile/history_list/bloc/history_list_bloc.dart';
import '../features/profile/profile_home/bloc/profile_home_bloc.dart';
import '../features/profile/schedule_detail/bloc/schedule_detail_bloc.dart';
import '../features/profile/schedule_list/bloc/schedule_list_bloc.dart';
import '../features/profile/update_user_information/bloc/update_user_information_bloc.dart';
import '../features/tutor/booking/bloc/booking_bloc.dart';
import '../features/tutor/feedback/bloc/feedback_bloc.dart';
import '../features/tutor/tutor_detail/bloc/tutor_detail_bloc.dart';
import '../features/tutor/tutor_list/bloc/tutor_list_bloc.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerSingleton<ApplicationBloc>(
      ApplicationBloc(
        sharedPreferencesService: injector(),
        authRepository: injector(),
      ),
    );

    injector.registerFactory(
      () => ForgotPasswordBloc(
        authRepository: injector(),
      ),
    );

    injector.registerFactory(
      () => SignInBloc(
        authRepository: injector(),
        preferencesService: injector(),
      ),
    );

    injector.registerFactory(
      () => SignUpBloc(
        authRepository: injector(),
        sharedPreferencesService: injector(),
      ),
    );

    injector.registerFactory(
      () => TutorListBloc(
        tutorRepository: injector(),
        userRepository: injector(),
        scheduleRepository: injector(),
      ),
    );

    injector.registerFactory(
      () => ChangePasswordBloc(
        userRepository: injector(),
      ),
    );

    injector.registerFactory(
      () => UpdateUserInformationBloc(
        userRepository: injector(),
      ),
    );

    injector.registerFactory(
      () => CourseListBloc(
        courseRepository: injector(),
      ),
    );

    injector.registerFactory(
      () => CourseDetailBloc(
        courseRepository: injector(),
      ),
    );

    injector.registerFactory(
      () => TutorDetailBloc(
        tutorRepository: injector(),
      ),
    );

    injector.registerFactory(
      () => FeedbackBloc(
        tutorRepository: injector(),
      ),
    );

    injector.registerFactory(
      () => BookingBloc(
        scheduleRepository: injector(),
      ),
    );

    injector.registerFactory(
      () => HistoryListBloc(
        scheduleRepository: injector(),
      ),
    );

    injector.registerFactory(
      () => MeetingBloc(),
    );

    injector.registerFactory(
      () => TopicDetailBloc(),
    );

    injector.registerFactory(
      () => ProfileHomeBloc(),
    );

    injector.registerFactory(
      () => ScheduleListBloc(),
    );

    injector.registerFactory(
      () => ScheduleDetailBloc(),
    );
  }
}
