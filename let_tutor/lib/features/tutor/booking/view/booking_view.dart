import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../generated/l10n.dart';
import '../bloc/booking_bloc.dart';

class BookingView extends StatefulWidget {
  const BookingView({Key? key, required this.tutorId}) : super(key: key);

  final String tutorId;

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
  @override
  void initState() {
    context.read<BookingBloc>().add(BookingLoaded(tutorId: widget.tutorId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingBloc, BookingState>(
      listener: (context, state) {
        if (state.status == BookingStatus.bookSuccess) {
          showDialog(context: context, builder: (context){
            return const AlertDialog(
              title: Text('Booking detail'),
              content: Text('Booking success'),
            );
          });
          context.read<BookingBloc>().add(BookingLoaded(tutorId: widget.tutorId));
        }
        else if (state.status == BookingStatus.bookFailed) {
          showDialog(context: context, builder: (context) {
            return const AlertDialog(
              title: Text('Booking detail'),
              content: Text('Booking failed'),
            );
          });
          context.read<BookingBloc>().add(BookingLoaded(tutorId: widget.tutorId));
        }
      },
      builder: (context, state) {
        if (state.status == BookingStatus.loadSuccess) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(),
              body: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    // Select date
                    const _Header(header: 'Booking date'),
                    _CalendarPicker(availableDate: state.availableDate),
                    const SizedBox(
                      height: 16,
                    ),

                    // Select time
                    const _Header(header: 'Booking time'),
                    const _TimePicker(),
                    const SizedBox(
                      height: 16,
                    ),

                    const _Header(header: 'Price'),
                    const _PriceInformation(),
                    const SizedBox(
                      height: 16,
                    ),

                    // Button 'Book'
                    const _BookButton(),
                  ],
                ),
              ),
            ),
          );
        }
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key, required this.header}) : super(key: key);

  final String header;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 24,
          child: Divider(),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          header,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          width: 8,
        ),
        const Expanded(child: Divider())
      ],
    );
  }
}

class _CalendarPicker extends StatelessWidget {
  const _CalendarPicker({Key? key, required this.availableDate})
      : super(key: key);

  final List<DateTime> availableDate;

  @override
  Widget build(BuildContext context) {
    return availableDate.isEmpty
        ? Text(S.current.no_data)
        : CalendarDatePicker(
            initialDate: availableDate.first,
            firstDate: DateTime.now(),
            lastDate: DateTime(DateTime.now().year + 1),
            onDateChanged: (DateTime selected) {
              context
                  .read<BookingBloc>()
                  .add(BookingDateChose(dateTime: selected));
            },
            selectableDayPredicate: (DateTime date) {
              if (availableDate.contains(date)) {
                return true;
              }
              return false;
            },
          );
  }
}

class _TimePicker extends StatelessWidget {
  const _TimePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        final pContext = context;
        if (state.status == BookingStatus.loadSuccess) {
          List<String> availableId =
              state.scheduleDetailAvailableId[state.dateChose] ?? [];
          return SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: availableId.length,
              itemBuilder: (context, index) {
                var startTime = state.availableTime[availableId[index]]![0];
                var endTime = state.availableTime[availableId[index]]![1];
                var time =
                    '${startTime.hour}:${startTime.minute} - ${endTime.hour}:${endTime.minute}';
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: FilterChip(
                    label: Text(time),
                    selected: time == state.timeChose,
                    onSelected: state.canBook[index]
                        ? (selected) {
                            pContext.read<BookingBloc>().add(BookingTimeChose(
                                scheduleId: availableId[index],
                                timeChose: selected ? time : ''));
                          }
                        : null,
                  ),
                );
              },
            ),
          );
        }
        return Container();
      },
    );
  }
}

class _PriceInformation extends StatelessWidget {
  const _PriceInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        children: [
          /*Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Balance',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('You have 100 lessons left')
            ],
          ),
          const SizedBox(
            height: 8,
          ),*/
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Price',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('1 lesson')
            ],
          )
        ],
      ),
    );
  }
}

class _BookButton extends StatelessWidget {
  const _BookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        final pContext = context;
        return ElevatedButton(
          onPressed: state.dateChose != null && state.timeChose.isNotEmpty
              ? () async {
                  return showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Confirm booking'),
                        content: Text(
                            'Book lesson at ${state.timeChose}, ${DateFormat('dd MMM yyyy').format(state.dateChose!)}'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context, 'Back');
                            },
                            child: const Text('Back'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context, 'Continue');
                              pContext.read<BookingBloc>().add(BookingBookButtonPressed());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              foregroundColor:
                                  Theme.of(context).colorScheme.onPrimary,
                            ),
                            child: const Text('Book'),
                          )
                        ],
                      );
                    },
                  );
                }
              : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            minimumSize: const Size.fromHeight(48),
          ),
          child: Text(S.current.book_now),
        );
      },
    );
  }
}
