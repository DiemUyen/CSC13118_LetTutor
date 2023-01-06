import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../../../router/app_router.dart';
import '../bloc/profile_home_bloc.dart';

class ProfileHomeView extends StatelessWidget {
  const ProfileHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Column(
            children: [
              // My profile
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(48)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      icon: const Icon(Icons.person_outline),
                      label: const Text('My profile'),
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouter.myProfilePage);
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),

              // My wallet
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(48)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      icon: const Icon(Icons.wallet_outlined),
                      label: const Text('My wallet'),
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouter.myWalletPage);
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),

              // My schedule
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(48)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      icon: const Icon(Icons.calendar_today_outlined),
                      label: const Text('My schedule'),
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouter.mySchedulePage);
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),

              // My history
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(48)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      icon: const Icon(Icons.history_outlined),
                      label: const Text('My history'),
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouter.myHistoryPage);
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),

              // My courses
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(48)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      icon: const Icon(Icons.my_library_books_outlined),
                      label: const Text('My courses'),
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouter.myCoursesPage);
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),

              // Change password
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(48)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      icon: const Icon(Icons.key_outlined),
                      label: Text(S.current.change_password),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, AppRouter.changePasswordPage);
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),

              // Become a tutor
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(48)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      icon: const Icon(Icons.co_present),
                      label: const Text('Become a tutor'),
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouter.becomeTutorPage);
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),

              // Log out
              BlocListener<ProfileHomeBloc, ProfileHomeState>(
                listener: (context, state) {
                  // TODO: implement listener
                  if (state is ProfileHomeLoadSuccess) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, AppRouter.signInPage, (route) => false);
                  }
                },
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        style: ButtonStyle(
                            alignment: Alignment.centerLeft,
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromHeight(48)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent)),
                        icon: const Icon(Icons.logout),
                        label: const Text('Log out'),
                        onPressed: () {
                          context
                              .read<ProfileHomeBloc>()
                              .add(const ProfileHomeLogOutButtonPressed());
                        },
                      ),
                    )
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
