import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/avartar_tutor.jpg'),
              radius: 24,
            ),
            const SizedBox(height: 8,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('April', style: Theme.of(context).textTheme.headlineSmall,),
                  const SizedBox(height: 8,),
                  Text('Study date', style: Theme.of(context).textTheme.titleMedium,),
                  const SizedBox(height: 8,),
                  const Text('Start time : End time')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

