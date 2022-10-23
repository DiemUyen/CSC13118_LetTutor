import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {

  var availableDate = <DateTime>[ DateTime(2022, 10, 24), DateTime(2022, 10, 27), DateTime(2022, 10, 28), DateTime(2022, 11, 2)];
  var availableTime = <String>[ '18:30 - 18:55', '19:00 - 19:25', '20:00 - 20:25', '20:30 - 20:55', '21:00 - 21:25'];

  Widget header(BuildContext context, String header) {
    return Row(
      children: [
        const SizedBox(width: 24, child: Divider(),),
        const SizedBox(width: 8,),
        Text(header, style: Theme.of(context).textTheme.titleMedium,),
        const SizedBox(width: 8,),
        const Expanded(child: Divider())
      ],
    );
  }

  Widget calendarPicker() {
    return CalendarDatePicker(
      initialDate: availableDate.first,
      firstDate: DateTime.now(),
      lastDate: DateTime(2023),
      onDateChanged: (DateTime selected) {

      },
      selectableDayPredicate: (DateTime date) {
        if (availableDate.contains(date)) {
          return true;
        }
        return false;
      },
    );
  }

  Widget timePicker() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: availableTime.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FilterChip(
                label: Text(availableTime[index]),
                onSelected: (bool selected) {

                }
            ),
          );
        },
      ),
    );
  }

  Widget priceInformation() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Balance',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),

              Text('You have 100 lessons left')
            ],
          ),
          const SizedBox(height: 8,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Price',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),

              Text('1 lesson')
            ],
          )
        ],
      ),
    );
  }

  Widget bookButton() {
    return ElevatedButton(
      onPressed: () async {
        return showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: const Text('Booking detail'),
              content: const Text('Booking success'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, 'Back');
                    Navigator.pop(context);
                  },
                  child: const Text('Back'),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context, 'Continue');
                    });
                  },
                  child: const Text('Continue Booking'),
                )
              ],
            );
          }
        );
      },
      child: const Text('Book Now')
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              // Select date
              header(context, 'Booking date'),
              calendarPicker(),
              const SizedBox(height: 16,),

              // Select time
              header(context, 'Booking time'),
              timePicker(),
              const SizedBox(height: 16,),

              header(context, 'Price'),
              priceInformation(),
              const SizedBox(height: 16,),

              // Button 'Book'
              bookButton()
            ],
          ),
        )
      ),
    );
  }
}
