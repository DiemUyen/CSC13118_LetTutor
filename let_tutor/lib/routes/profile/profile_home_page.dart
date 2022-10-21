import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';

class ProfileHomePage extends StatefulWidget {
  const ProfileHomePage({Key? key}) : super(key: key);

  @override
  State<ProfileHomePage> createState() => _ProfileHomePageState();
}

class _ProfileHomePageState extends State<ProfileHomePage> {

  List<IconData> icons = <IconData>[ Icons.person_outline, Icons.wallet_outlined, Icons.calendar_today_outlined, Icons.history_outlined,
    Icons.my_library_books_outlined, Icons.key_outlined, Icons.co_present, Icons.logout];

  List<String> titles = <String>[ 'My profile', 'My wallet', 'My schedule', 'My history',
    'My courses', 'Change password', 'Become a tutor', 'Log out'];

  List<String> routes = <String>[ RouteGenerator.myProfilePage, RouteGenerator.myWalletPage, RouteGenerator.mySchedulePage, RouteGenerator.myHistoryPage,
    RouteGenerator.myCoursesPage, RouteGenerator.changePasswordPage, RouteGenerator.becomeTutorPage, RouteGenerator.signInPage];

  Widget item(BuildContext context, IconData icon, String title) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            style: ButtonStyle(
              //elevation: MaterialStateProperty.all(4),
              alignment: Alignment.centerLeft,
              fixedSize: MaterialStateProperty.all(const Size.fromHeight(48)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent)
            ),
            icon: Icon(icon),
            label: Text(title),
            onPressed: () { },
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent, width: 4),
              borderRadius: BorderRadius.circular(200)
            ),
            padding: const EdgeInsets.all(4),
            child: CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              radius: 100,
              child: const Text('AH'),
            ),
          ),
          const SizedBox(height: 32,),
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, routes[index]);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: item(context, icons[index], titles[index])
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
