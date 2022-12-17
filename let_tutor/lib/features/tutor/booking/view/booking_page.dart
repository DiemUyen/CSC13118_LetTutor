import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_tutor/injector/injector.dart';

import '../bloc/booking_bloc.dart';
import 'booking_view.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key, required this.tutorId}) : super(key: key);

  final String tutorId;

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<BookingBloc>(),
      child: BookingView(
        tutorId: widget.tutorId,
      ),
    );
  }
}
