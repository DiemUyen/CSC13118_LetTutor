import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.brown,
              child: Text('AH'),
            ),
            const SizedBox(height: 8,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('April', style: Theme.of(context).textTheme.headline6,),
                  const SizedBox(height: 8,),
                  Text('Study date', style: Theme.of(context).textTheme.subtitle2,),
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

