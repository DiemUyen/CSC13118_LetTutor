import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_tutor/features/profile/update_user_information/views/my_profile_view.dart';
import 'package:let_tutor/injector/injector.dart';

import '../bloc/update_user_information_bloc.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<UpdateUserInformationBloc>(),
      child: const MyProfileView(),
    );
  }
}
