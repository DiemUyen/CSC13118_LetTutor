import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';
import 'package:let_tutor/widgets/specialities.dart';
import 'package:let_tutor/widgets/tutor_info.dart';

class TutorHomeCard extends StatelessWidget {
  const TutorHomeCard({Key? key}) : super(key: key);

  Widget favoriteButton(BuildContext context) {
    return Positioned.fill(
      top: 8,
      right: 8,
      child: Align(
        alignment: Alignment.topRight,
        child: IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border_outlined)),
      ),
    );
  }

  Widget inforTutor(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            // Information tutor
            TutorInfo(),
            SizedBox(height: 16,),
            // Specialities
            Align(
              alignment: Alignment.centerLeft,
              child: Specialities(),
            ),
            SizedBox(height: 16,),
            // Introduction
            Text('lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
            SizedBox(height: 32,),
          ],
        ),
      ),
    );
  }

  Widget bookButton(BuildContext context) {
    return Positioned.fill(
      right: 8,
      bottom: 8,
      child: Align(
        alignment: Alignment.bottomRight,
        child: OutlinedButton.icon(
            onPressed: () {
              // TODO: Navigate to booking page
              Navigator.pushNamed(context, RouteGenerator.tutorDetailPage);
            },
            icon: const Icon(Icons.edit_calendar_outlined),
            label: const Text("Book")
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          // Information of tutor
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.tutorDetailPage);
            },
            child: inforTutor(context)
          ),

          // Icon button 'Favorite'
          favoriteButton(context),

          // Button 'Book'
          bookButton(context)
        ],
      ),
    );
  }
}
