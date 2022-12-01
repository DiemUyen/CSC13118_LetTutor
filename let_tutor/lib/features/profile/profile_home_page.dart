import 'package:flutter/material.dart';

import '../../router/app_router.dart';
import '../../widgets/widgets.dart';


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

  List<String> routes = <String>[ AppRouter.myProfilePage, AppRouter.myWalletPage, AppRouter.mySchedulePage, AppRouter.myHistoryPage,
    AppRouter.myCoursesPage, AppRouter.changePasswordPage, AppRouter.becomeTutorPage, AppRouter.signInPage];

  Widget avatar() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColor, width: 4),
          borderRadius: BorderRadius.circular(200)
      ),
      padding: const EdgeInsets.all(4),
      child: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/avartar_user.jpg'),
        radius: 100,
      ),
    );
  }

  Widget item(BuildContext context, int index) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            style: ButtonStyle(
              alignment: Alignment.centerLeft,
              fixedSize: MaterialStateProperty.all(const Size.fromHeight(48)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent)
            ),
            icon: Icon(icons[index]),
            label: Text(titles[index]),
            onPressed: () {
              if (routes[index] == AppRouter.signInPage) {
                Navigator.pushNamedAndRemoveUntil(context, routes[index], (route) => false);
              }
              else {
                Navigator.pushNamed(context, routes[index]);
              }
            },
          ),
        )
      ],
    );
  }

  Widget itemList() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: item(context, index)
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const TransparentAppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 0),
          child: Column(
            children: [
              avatar(),
              const SizedBox(height: 32,),

              itemList(),
            ],
          ),
        ),
      ),
    );
  }
}