import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/schedule/next_schedule.dart';
import '../../../../generated/l10n.dart';
import '../../../../router/app_router.dart';
import '../../../../widgets/widgets.dart';
import '../bloc/history_list_bloc.dart';

class HistoryListView extends StatefulWidget {
  const HistoryListView({Key? key}) : super(key: key);

  @override
  State<HistoryListView> createState() => _HistoryListViewState();
}

class _HistoryListViewState extends State<HistoryListView> {
  @override
  void initState() {
    context.read<HistoryListBloc>().add(const HistoryListLoaded(page: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var crossAxisCount = 2;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.current.history),
          centerTitle: true,
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 1600) {
            crossAxisCount = 8;
          } else if (constraints.maxWidth > 800) {
            crossAxisCount = 4;
          } else {
            crossAxisCount = 2;
          }

          return BlocBuilder<HistoryListBloc, HistoryListState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: GridView.builder(
                          physics: const ScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 4,
                                  crossAxisSpacing: 8,
                                  crossAxisCount: crossAxisCount),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: state.historyClasses.rows?.length ?? 0,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, AppRouter.historyDetailPage,
                                      arguments:
                                          state.historyClasses.rows![index]);
                                },
                                child: LessonCard(
                                  historyInfo:
                                      state.historyClasses.rows?[index] ??
                                          const NextSchedule(),
                                ));
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.chevron_left,
                            size: 32,
                          ),
                        ),
                        SizedBox(
                          width: 250,
                          height: 48,
                          child: Center(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount:
                                  (state.historyClasses.count ?? 0) ~/ 20 + 1,
                              itemBuilder: (context, index) => TextButton(
                                onPressed: () {
                                  context
                                      .read<HistoryListBloc>()
                                      .add(HistoryListLoaded(page: index + 1));
                                },
                                child: Text('${index + 1}'),
                              ),
                            ),
                          ),
                        ),
                        const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.chevron_right,
                            size: 32,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
