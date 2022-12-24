import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:let_tutor/features/profile/update_user_information/views/my_profile_view.dart';
import 'package:let_tutor/injector/injector.dart';

import '../bloc/update_user_information_bloc.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {

  Widget birthdayField() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(), label: Text('Birthday')),
      readOnly: true,
      onTap: () async {
        DateTime? picked = await showDatePicker(
            context: context,
            initialDate: DateTime(1990, 1, 1),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
            helpText: 'Select your birthday');
        if (picked != null) {
          setState(() {
            //datePicker = DateFormat('dd/MM/yyyy').format(picked);
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<UpdateUserInformationBloc>(),
      child: const MyProfileView(),
    );
  }
}
