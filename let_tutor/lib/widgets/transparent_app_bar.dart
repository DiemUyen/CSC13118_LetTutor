import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';

class TransparentAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TransparentAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: RichText(
        maxLines: 3,
        text: const TextSpan(
            children: [
              TextSpan(text: 'Hello', style: TextStyle(
                  fontWeight: FontWeight.bold
              )),
              TextSpan(text: '\n'),
              TextSpan(text: 'Diem Uyen', style: TextStyle(
                  fontWeight: FontWeight.bold
              ))
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
