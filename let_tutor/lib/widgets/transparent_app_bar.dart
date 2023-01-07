import 'package:flutter/material.dart';
import 'package:let_tutor/services/shared_preferences_service.dart';
import '../injector/injector.dart';
import '../router/app_router.dart';

class TransparentAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TransparentAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Let Tutor'),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings_outlined, ),
          onPressed: () {
            Navigator.pushNamed(context, AppRouter.settingPage);
          },
        )
      ],
      automaticallyImplyLeading: false,
    );
  }

  @override
  // Implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
