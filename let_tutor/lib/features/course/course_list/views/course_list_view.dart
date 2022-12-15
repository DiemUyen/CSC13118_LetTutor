import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../../../router/app_router.dart';
import '../../../../widgets/widgets.dart';
import '../bloc/course_list_bloc.dart';

class CourseListView extends StatefulWidget {
  const CourseListView({Key? key}) : super(key: key);

  @override
  State<CourseListView> createState() => _CourseListViewState();
}

class _CourseListViewState extends State<CourseListView>
    with SingleTickerProviderStateMixin {
  bool visibilityFilter = false;
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    context.read<CourseListBloc>().add(CourseListLoaded());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CourseListBloc, CourseListState>(
      listener: (context, state) {
        if (state.status == CourseListStatus.loading) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.transparent,
              contentPadding: const EdgeInsets.symmetric(vertical: 24.0),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(),
                  ),
                ],
              ),
            ),
          );
        } else if (state.status == CourseListStatus.loadSuccess) {
          Navigator.pop(context);
        } else if (state.status == CourseListStatus.loadFailure) {
          Navigator.pop(context);
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                // Search and filter
                Column(
                  children: [
                    Row(
                      children: [
                        // Search bar
                        Expanded(
                          flex: 1,
                          child: SearchBar(hintText: S.current.search_course),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        // Filter
                        IconButton(
                          icon: const Icon(Icons.filter_list_outlined),
                          onPressed: () {
                            setState(() {
                              visibilityFilter = !visibilityFilter;
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Visibility(
                      visible: visibilityFilter,
                      child: Column(
                        children: const [
                          // Level
                          _LevelFilter(),
                          SizedBox(
                            height: 8,
                          ),
                          // Categories
                          _CategoriesFilter(),
                          SizedBox(
                            height: 8,
                          ),
                          // Sort by level
                          _SortLevel(),
                          SizedBox(
                            height: 8,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                _TabBar(
                  tabController: _tabController,
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      // First tab view
                      _FirstTabView(),
                      // Second tab view
                      _SecondTabView(),
                      // Third tab view
                      _ThirdTabView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LevelFilter extends StatelessWidget {
  const _LevelFilter({super.key});

  static const List<String> levels = [
    'All level',
    'Beginner',
    'Upper-Beginner',
    'Pre-Intermediate',
    'Intermediate',
    'Upper-Intermediate',
    'Pre-Advanced',
    'Advanced',
    'Very Advanced'
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      //value: levels.first,
      items: levels.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(value));
      }).toList(),
      onChanged: (String? value) {},
      hint: Text(S.current.choose_level),
    );
  }
}

class _CategoriesFilter extends StatelessWidget {
  const _CategoriesFilter({super.key});

  static const List<String> categories = [
    'All categories',
    'For Studying Abroad',
    'English For Traveling',
    'Conversational English',
    'English For Beginners',
    'Business English',
    'English For Kids',
    'STARTERS',
    'PET',
    'KET',
    'MOVERS',
    'FLYERS',
    'TOEFL',
    'TOEIC',
    'IELTS'
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      //value: categories.first,
      items: categories.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(value));
      }).toList(),
      onChanged: (String? value) {},
      hint: Text(S.current.choose_categories),
    );
  }
}

class _SortLevel extends StatelessWidget {
  const _SortLevel({super.key});

  static List<String> sortLevels = [
    S.current.sort_level,
    S.current.level_decreasing,
    S.current.level_increasing,
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      //value: sortLevels.first,
      items: sortLevels.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(value));
      }).toList(),
      onChanged: (String? value) {},
      hint: Text(S.current.sort_level),
    );
  }
}

class _TabBar extends StatelessWidget {
  const _TabBar({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: TabBar(
          controller: tabController,
          isScrollable: true,
          tabs: const [
            Tab(
              text: 'Courses',
            ),
            Tab(
              text: 'E-Book',
            ),
            Tab(
              text: 'Interactive E-Book',
            )
          ],
        ),
      ),
    );
  }
}

class _FirstTabView extends StatelessWidget {
  const _FirstTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseListBloc, CourseListState>(
      builder: (context, state) {
        if (state.status == CourseListStatus.loadSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: state.courses.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRouter.courseDetailPage);
                },
                child: CourseListItem(
                  course: state.courses[index],
                ),
              );
            },
          );
        }
        return Container();
      },
    );
  }
}

class _SecondTabView extends StatelessWidget {
  const _SecondTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(S.current.no_data),
    );
  }
}

class _ThirdTabView extends StatelessWidget {
  const _ThirdTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(S.current.no_data),
    );
  }
}
