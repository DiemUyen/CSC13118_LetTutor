import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';

class TransparentAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TransparentAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: RichText(
        maxLines: 3,
        text: TextSpan(
          style: const TextStyle(
            color: Colors.black
          ),
          children: [
            TextSpan(text: 'Hello,', style: Theme.of(context).textTheme.titleLarge),
            const TextSpan(text: '\n'),
            TextSpan(text: 'Diem Uyen', style: Theme.of(context).textTheme.titleMedium)
          ]
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings_outlined, color: Colors.black,),
          onPressed: () {
            Navigator.pushNamed(context, RouteGenerator.settingPage);
          },
        )
      ],
    );
  }

  @override
  // Implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
