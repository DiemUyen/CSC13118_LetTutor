import 'package:flutter/material.dart';

import '../../router/app_router.dart';
import '../../widgets/widgets.dart';


class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {

  var crossAxisCount = 2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 1600) {
            crossAxisCount = 8;
          }
          else if (constraints.maxWidth > 800) {
            crossAxisCount = 4;
          }
          else {
            crossAxisCount = 2;
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 4,
                crossAxisSpacing: 8,
                crossAxisCount: crossAxisCount
              ),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRouter.historyDetailPage);
                  },
                  child: const LessonCard()
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
