import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';
import 'package:let_tutor/widgets/course_card.dart';
import 'package:let_tutor/widgets/search_bar.dart';

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
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder( builder: (context, constraints) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Search
            const SearchBar(
              hintText: 'Enter a course name',
            ),

            // Level filter
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(8),
              child: DropdownButton<String>(
                isExpanded: true,
                underline: Container(
                  height: 0,
                ),
                value: levels.first,
                items: levels.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(value: value, child: Text(value));
                }).toList(),
                onChanged: (String? value) { },
              ),
            ),

            // Category level
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(8),
              child: DropdownButton<String>(
                isExpanded: true,
                underline: Container(
                  height: 0,
                ),
                value: categories.first,
                items: categories.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(value: value, child: Text(value));
                }).toList(),
                onChanged: (String? value) { },
              ),
            ),

            // Sort filter
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(8),
              child: DropdownButton<String>(
                isExpanded: true,
                underline: Container(
                  height: 0,
                ),
                value: sortLevels.first,
                items: sortLevels.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(value: value, child: Text(value));
                }).toList(),
                onChanged: (String? value) { },
              ),
            ),

            const SizedBox(height: 16,),

            // Tab bar
            SizedBox(
              height: 50,
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                bottom: TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: ShapeDecoration(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                    color: Colors.blueAccent[100]
                  ),
                  tabs: const [
                    Tab(text: 'Courses',),
                    Tab(text: 'E-Book',),
                    Tab(text: 'Interactive E-Book',)
                  ],
                ),
              ),
            ),

            // Tab bar view
            SizedBox(
              height: 400,
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  // First tab view
                  ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RouteGenerator.courseDetailPage);
                        },
                        child: CourseCard(bottomWidget: Row(
                          children: const [
                            // Level
                            Text('Intermediate'),
                            SizedBox(width: 8,),
                            // The number of lessons
                            Text('9 lessons')
                          ],
                        )),
                      );
                    },
                  ),
                  // Second tab view
                  ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const CourseCard(
                        bottomWidget: Align(
                          alignment: Alignment.centerLeft,
                            child: Text('Intermediate')
                        )
                      );
                    },
                  ),
                  // Third tab view
                  Container(
                    child: const Center(
                      child: Text('No data'),
                    )
                  )
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
