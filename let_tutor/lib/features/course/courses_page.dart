import 'package:flutter/material.dart';

import '../../router/app_router.dart';
import '../../widgets/widgets.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> with SingleTickerProviderStateMixin{

  List<String> levels = ['All level', 'Beginner', 'Upper-Beginner', 'Pre-Intermediate', 'Intermediate', 'Upper-Intermediate', 'Pre-Advanced', 'Advanced', 'Very Advanced'];
  List<String> categories = ['All categories', 'For Studying Abroad', 'English For Traveling', 'Conversational English', 'English For Beginners', 'Business English', 'English For Kids',
    'STARTERS', 'PET', 'KET', 'MOVERS', 'FLYERS', 'TOEFL', 'TOEIC', 'IELTS'];
  List<String> sortLevels = ['Sort by level', 'Level decreasing', 'Level increasing'];
  
  late TabController _tabController;
  var visibilityFilter = false;

  Widget searchBar() {
    return Row(
      children: [
        // Search bar
        const Expanded(
            flex: 1,
            child: SearchBar(hintText: 'Enter a course name')
        ),
        const SizedBox(width: 16,),
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
    );
  }

  Widget levelFilter() {
    return DropdownButton<String>(
      isExpanded: true,
      value: levels.first,
      items: levels.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(value));
      }).toList(),
      onChanged: (String? value) { },
    );
  }

  Widget categoriesFilter() {
    return DropdownButton<String>(
      isExpanded: true,
      value: categories.first,
      items: categories.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(value));
      }).toList(),
      onChanged: (String? value) { },
    );
  }

  Widget sortLevel() {
    return DropdownButton<String>(
      isExpanded: true,
      value: sortLevels.first,
      items: sortLevels.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(value));
      }).toList(),
      onChanged: (String? value) { },
    );
  }

  Widget tabBar() {
    return SizedBox(
      height: 50,
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            Tab(text: 'Courses',),
            Tab(text: 'E-Book',),
            Tab(text: 'Interactive E-Book',)
          ],
        ),
      ),
    );
  }

  Widget firstTabView() {
   return ListView.builder(
     shrinkWrap: true,
     scrollDirection: Axis.vertical,
     itemCount: 10,
     itemBuilder: (context, index) {
       return GestureDetector(
         onTap: () {
           Navigator.pushNamed(context, AppRouter.courseDetailPage);
         },
         child: CourseCard(bottomWidget: Row(
           children: const [
             // Level
             Text('Intermediate', style: TextStyle(fontWeight: FontWeight.bold),),
             SizedBox(width: 8,),
             // The number of lessons
             Text('9 lessons')
           ],
         )),
       );
     },
   );
  }

  Widget secondTabView() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 8,
      itemBuilder: (context, index) {
        return const CourseCard(
            bottomWidget: Align(
                alignment: Alignment.centerLeft,
                child: Text('Intermediate')
            )
        );
      },
    );
  }

  Widget thirdTabView() {
    return const Center(
      child: Text('No data'),
    );
  }

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const TransparentAppBar(),
        body: LayoutBuilder( builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Search and filter
                Column(
                  children: [
                    searchBar(),
                    const SizedBox(height: 8,),

                    Visibility(
                      visible: visibilityFilter,
                      child: Column(
                        children: [
                          // Level
                          levelFilter(),
                          const SizedBox(height: 8,),
                          // Categories
                          categoriesFilter(),
                          const SizedBox(height: 8,),
                          // Sort by level
                          sortLevel(),
                          const SizedBox(height: 8,)
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16,),

                // Tab bar
                tabBar(),

                // Tab bar view
                Expanded(
                  //height: 400,
                  child: TabBarView(
                    controller: _tabController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // First tab view
                      firstTabView(),
                      // Second tab view
                      secondTabView(),
                      // Third tab view
                      thirdTabView()
                    ],
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
