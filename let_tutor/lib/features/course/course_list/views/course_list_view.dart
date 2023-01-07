import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/course/categories.dart';
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
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    context.read<CourseListBloc>().add(CourseListLoaded());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              // Search and filter
              Row(
                children: [
                  // Search bar
                  Expanded(
                    flex: 1,
                    child: _SearchBar(),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  // Filter
                  IconButton(
                    icon: const Icon(Icons.filter_list_outlined),
                    onPressed: () {
                      context
                          .read<CourseListBloc>()
                          .add(CourseListFilterButtonPressed());
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              BlocBuilder<CourseListBloc, CourseListState>(
                builder: (context, state) {
                  return Visibility(
                    visible: state.isFilterSearch,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Level
                        const _LevelFilter(),
                        const SizedBox(
                          height: 8,
                        ),
                        // Categories
                        const _CategoriesFilter(),
                        const SizedBox(
                          height: 8,
                        ),
                        // Sort by level
                        const _SortLevel(),
                        const SizedBox(
                          height: 8,
                        ),
                        state.filters.isNotEmpty
                            ? OutlinedButton(
                            onPressed: () {
                              context.read<CourseListBloc>().add(
                                  CourseListResetFilterButtonPressed());
                            },
                            child: Text(S.current.reset_filters))
                            : Container(),
                      ],
                    ),
                  );
                },
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
    );
  }
}

class _SearchBar extends StatelessWidget {
  _SearchBar({Key? key}) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseListBloc, CourseListState>(
      builder: (context, state) {
        if (state.isReset) {
          _controller.text = '';
        }
        return TextFormField(
          controller: _controller,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search_outlined),
            border: const OutlineInputBorder(),
            hintText: S.current.search_course,
          ),
          onChanged: (value) {
            context
                .read<CourseListBloc>()
                .add(CourseListNameSearchChanged(_controller.text));
          },
        );
      },
    );
  }
}

class _LevelFilter extends StatelessWidget {
  const _LevelFilter();

  static String? selectedLevel;
  static const List<String> levels = [
    'Any level',
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
    return BlocBuilder<CourseListBloc, CourseListState>(
      builder: (context, state) {
        if (state.isReset) {
          selectedLevel = null;
        }
        return DropdownButton<String>(
          isExpanded: true,
          value: selectedLevel,
          items: levels.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: (String? value) {
            selectedLevel = value;
            context.read<CourseListBloc>().add(CourseListLevelFilterChanged(
                levels.indexOf(selectedLevel ?? '')));
          },
          hint: Text(S.current.choose_level),
        );
      },
    );
  }
}

class _CategoriesFilter extends StatelessWidget {
  const _CategoriesFilter();

  static String? selectedKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseListBloc, CourseListState>(
      builder: (context, state) {
        final contentCategories = state.categories;
        if (state.isReset) {
          selectedKey = null;
        }
        return DropdownButton<String>(
          isExpanded: true,
          value: selectedKey,
          items: contentCategories
              .map<DropdownMenuItem<String>>((Categories element) {
            return DropdownMenuItem<String>(
                value: element.key, child: Text(element.title ?? ''));
          }).toList(),
          onChanged: (String? value) {
            selectedKey = value;
            context.read<CourseListBloc>().add(CourseListCategoryFilterChanged(
                contentCategories
                    .firstWhere((element) => element.key == value)
                    .id ??
                    ''));
          },
          hint: Text(S.current.choose_categories),
        );
      },
    );
  }
}

class _SortLevel extends StatelessWidget {
  const _SortLevel();

  static String? selectedLevel;

  static Map<String, String> sortLevels = {
    S.current.level_decreasing: 'DESC',
    S.current.level_increasing: 'ASC',
  };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseListBloc, CourseListState>(
      builder: (context, state) {
        if (state.isReset) {
          selectedLevel = null;
        }
        return DropdownButton<String>(
          isExpanded: true,
          value: selectedLevel,
          items: sortLevels.keys.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: (String? value) {
            selectedLevel = value;
            context
                .read<CourseListBloc>()
                .add(CourseListSortFilterChanged(sortLevels[value] ?? ''));
          },
          hint: Text(S.current.sort_level),
        );
      },
    );
  }
}

class _TabBar extends StatelessWidget {
  const _TabBar({required this.tabController});

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
  const _FirstTabView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseListBloc, CourseListState>(
      builder: (context, state) {
        if (state.status == CourseListStatus.loadSuccess) {
          if (state.filteredCourses.isNotEmpty) {
            return ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: state.filteredCourses.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRouter.courseDetailPage,
                        arguments: state.filteredCourses[index].id);
                  },
                  child: CourseListItem(
                    course: state.filteredCourses[index],
                  ),
                );
              },
            );
          }
        }
        return Center(
          child: Text(S.current.no_data),
        );
      },
    );
  }
}

class _SecondTabView extends StatelessWidget {
  const _SecondTabView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(S.current.no_data),
    );
  }
}

class _ThirdTabView extends StatelessWidget {
  const _ThirdTabView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(S.current.no_data),
    );
  }
}
