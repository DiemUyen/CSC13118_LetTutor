import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';
import 'package:let_tutor/widgets/history_card.dart';

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
                mainAxisSpacing: 8,
                crossAxisSpacing: 16,
                crossAxisCount: crossAxisCount
              ),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteGenerator.historyDetailPage);
                  },
                  child: const HistoryCard()
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
