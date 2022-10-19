import 'package:flutter/material.dart';
import 'package:let_tutor/widgets/specialities.dart';
import 'package:let_tutor/widgets/star_rating.dart';

class TutorHomeCard extends StatelessWidget {
  const TutorHomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          // Favorite
          Container(
            child: Positioned.fill(
              top: 8,
              right: 8,
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border_outlined)),
              ),
            ),
          ),
          // Column
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Information tutor
                  Row(
                    children: [
                      // Avatar
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                        child: const Text('AH'),
                      ),
                      const SizedBox(width: 8,),
                      // Infor
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Name
                          const Text("April"),
                          Row(
                            children: const [
                              // Icon flag

                              // Nationality
                              Text("France"),
                            ],
                          ),
                          // Rating star
                          StarRating(
                              initialRating: 3.5,
                              ignoreGestures: true,
                              ratingUpgrade: (double rating) {}
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 16,),
                  // Specialities
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Specialities(),
                  ),
                  const SizedBox(height: 16,),
                  // Text
                  const Text('lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                  const SizedBox(height: 32,),
                ],
              ),
            ),
          ),
          // Button
          Container(
            child: Positioned.fill(
              right: 8,
              bottom: 8,
              child: Align(
                alignment: Alignment.bottomRight,
                child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit_calendar_outlined),
                    label: const Text("Book")
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
