import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../../../configs/country_list.dart';
import '../../../../data/models/user/learn_topics.dart';
import '../../../../data/models/user/test_preparation.dart';
import '../../../../generated/l10n.dart';
import '../bloc/update_user_information_bloc.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateUserInformationBloc, UpdateUserInformationState>(
      listener: (context, state) {
        if (state.status == UpdateUserInformationStatus.loading) {
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
        } else if (state.status ==
            UpdateUserInformationStatus.loadFirstSuccess) {
          Navigator.pop(context);
        } else if (state.status == UpdateUserInformationStatus.loadSuccess) {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              icon: Icon(
                Icons.check,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(S.current.update_success),
            ),
          );
        } else if (state.status == UpdateUserInformationStatus.loadFailure) {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              icon: Icon(
                Icons.error_outline_rounded,
                color: Theme.of(context).colorScheme.error,
              ),
              title: Text(S.current.update_failed),
            ),
          );
        }
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      const _UserAvatar(),
                      const SizedBox(
                        height: 16,
                      ),
                      const _UserName(),
                      //const Text('You have 100 lesson left'),
                      const SizedBox(
                        height: 8,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(S.current.others_review)),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                Text(
                  S.current.username,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                _UsernameTextField(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Email',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                _EmailTextField(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  S.current.country,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                _CountryField(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  S.current.phone,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                _PhoneField(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  S.current.birthday,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                _BirthdayField(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  S.current.level,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                _LevelField(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  S.current.want_to_learn,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const _WantToLearnField(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  S.current.study_schedule,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                _StudyScheduleField(),
                const SizedBox(
                  height: 16,
                ),
                const _SaveChangesButton(),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _UserAvatar extends StatefulWidget {
  const _UserAvatar({Key? key}) : super(key: key);

  @override
  State<_UserAvatar> createState() => _UserAvatarState();
}

class _UserAvatarState extends State<_UserAvatar> {
  String imageUrl = '';
  bool isPicked = false;

  void updateAvatar(BuildContext context, String path) {
    print('${path} DUONG DAN');
    context
        .read<UpdateUserInformationBloc>()
        .add(UpdateUserInformationAvatarChanged(avatarUrl: path));
    setState(() {
      imageUrl = path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInformationBloc, UpdateUserInformationState>(
      builder: (context, state) {
        if (state.status == UpdateUserInformationStatus.loadFirstSuccess) {
          imageUrl = state.user.avatar ?? '';
        }
        return GestureDetector(
          /*onTap: () async {
            try {
              final ImagePicker picker = ImagePicker();
              final XFile? image =
                  await picker.pickImage(source: ImageSource.gallery);
              if (image != null) {
                updateAvatar(context, image?.path ?? '');
              } else {
                print('No image selected');
              }
            } on PlatformException catch (exception) {
              if (kDebugMode) {
                print('Failed to pick image: $exception');
              }
            }
          },*/
          child: Container(
            decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 4),
                borderRadius: BorderRadius.circular(200)),
            padding: const EdgeInsets.all(4),
            child: isPicked
                ? Image.file(
                    File(imageUrl),
                    width: 100,
                    height: 100,
                  )
                : CachedNetworkImage(
                    width: 100,
                    height: 100,
                    imageUrl: imageUrl,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            CircularProgressIndicator(
                      value: downloadProgress.progress,
                    ),
                    errorWidget: (context, url, error) => Image.asset(
                      'assets/images/default_avatar.png',
                    ),
                  ),
          ),
        );
      },
    );
  }
}

class _UserName extends StatelessWidget {
  const _UserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInformationBloc, UpdateUserInformationState>(
      builder: (context, state) {
        return Text(
          state.user.name ?? '',
          style: Theme.of(context).textTheme.headlineSmall,
        );
      },
    );
  }
}

class _UsernameTextField extends StatelessWidget {
  _UsernameTextField({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInformationBloc, UpdateUserInformationState>(
      builder: (context, state) {
        if (state.status == UpdateUserInformationStatus.loadFirstSuccess) {
          controller.text = state.user.name ?? '';
        }
        return TextField(
          controller: controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            errorText:
                state.status == UpdateUserInformationStatus.informationInvalid
                    ? state.usernameError
                    : null,
          ),
          onChanged: (value) {
            context.read<UpdateUserInformationBloc>().add(
                UpdateUserInformationUsernameFieldChanged(username: value));
          },
        );
      },
    );
  }
}

class _EmailTextField extends StatelessWidget {
  _EmailTextField({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInformationBloc, UpdateUserInformationState>(
      builder: (context, state) {
        if (state.status == UpdateUserInformationStatus.loadFirstSuccess) {
          controller.text = state.user.email ?? '';
        }
        return TextField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
          readOnly: true,
          enabled: false,
        );
      },
    );
  }
}

class _CountryField extends StatelessWidget {
  _CountryField({Key? key}) : super(key: key);

  String selectedCountry = countryList.keys.first;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInformationBloc, UpdateUserInformationState>(
      builder: (context, state) {
        if (state.status == UpdateUserInformationStatus.loadFirstSuccess) {
          selectedCountry = state.user.country ?? countryList.keys.first;
        }
        return Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black38),
              borderRadius: BorderRadius.circular(4)),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: DropdownButton<String>(
            isExpanded: true,
            underline: Container(
              height: 0,
            ),
            value: selectedCountry,
            items:
                countryList.keys.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                  value: value, child: Text(countryList[value] ?? ''));
            }).toList(),
            onChanged: (String? value) {
              selectedCountry = value!;
              context.read<UpdateUserInformationBloc>().add(
                  UpdateUserInformationCountryFieldChanged(
                      country: selectedCountry));
            },
          ),
        );
      },
    );
  }
}

class _PhoneField extends StatelessWidget {
  _PhoneField({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInformationBloc, UpdateUserInformationState>(
      builder: (context, state) {
        if (state.status == UpdateUserInformationStatus.loadFirstSuccess) {
          controller.text = state.user.phone ?? '';
        }
        return TextField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
          readOnly: true,
          enabled: false,
          keyboardType: TextInputType.phone,
          onChanged: (value) => context
              .read<UpdateUserInformationBloc>()
              .add(UpdateUserInformationPhoneFieldChanged(phone: value)),
        );
      },
    );
  }
}

class _BirthdayField extends StatelessWidget {
  _BirthdayField({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInformationBloc, UpdateUserInformationState>(
        builder: (context, state) {
      if (state.status == UpdateUserInformationStatus.loadFirstSuccess) {
        controller.text = state.user.birthday ?? '';
      }
      return TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          border: const OutlineInputBorder(),
        ),
        readOnly: true,
        onTap: () async {
          DateTime? picked = await showDatePicker(
            context: context,
            initialDate: DateTime.parse(controller.text),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
            helpText: S.current.select_birthday,
          );
          if (picked != null) {
            controller.text = DateFormat('yyyy-MM-dd').format(picked);
            context.read<UpdateUserInformationBloc>().add(
                UpdateUserInformationBirthdayFieldChanged(
                    birthday: controller.text));
          }
        },
      );
    });
  }
}

class _LevelField extends StatelessWidget {
  _LevelField({Key? key}) : super(key: key);

  static List<String> levels = [
    'BEGINNER',
    'PRE-INTERMEDIATE',
    'INTERMEDIATE',
    'UPPER-INTERMEDIATE',
    'ADVANCED',
    'PROFICIENCY',
  ];
  String selectedLevel = levels.first;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInformationBloc, UpdateUserInformationState>(
      builder: (context, state) {
        if (state.status == UpdateUserInformationStatus.loadFirstSuccess) {
          selectedLevel = state.user.level ?? levels.first;
        }
        return Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black38),
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: DropdownButton<String>(
            isExpanded: true,
            underline: Container(
              height: 0,
            ),
            value: selectedLevel,
            items: levels.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: (String? value) {
              selectedLevel = value ?? '';
              context.read<UpdateUserInformationBloc>().add(
                  UpdateUserInformationLevelFieldChanged(level: value ?? ''));
            },
          ),
        );
      },
    );
  }
}

class _WantToLearnField extends StatelessWidget {
  const _WantToLearnField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInformationBloc, UpdateUserInformationState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8,
              children: state.learnTopics.map<Widget>((LearnTopics speciality) {
                return FilterChip(
                    label: Text(speciality.name ?? ''),
                    selected: (state.filteredLearnTopics.indexWhere(
                            (element) => element == speciality.id.toString()) !=
                        -1),
                    onSelected: (bool value) {
                      context.read<UpdateUserInformationBloc>().add(
                          UpdateUserInformationWantToLearnFieldChanged(
                              learnTopicsId: [speciality]));
                    });
              }).toList(),
            ),
            Wrap(
              spacing: 8,
              children: state.testPreparations
                  .map<Widget>((TestPreparation speciality) {
                return FilterChip(
                    label: Text(speciality.name ?? ''),
                    selected: (state.filteredTestPreparations.indexWhere(
                            (element) => element == speciality.id.toString()) !=
                        -1),
                    onSelected: (bool value) {
                      context.read<UpdateUserInformationBloc>().add(
                          UpdateUserInformationWantToLearnFieldChanged(
                              testPreparationsId: [speciality]));
                    });
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}

class _StudyScheduleField extends StatelessWidget {
  _StudyScheduleField({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInformationBloc, UpdateUserInformationState>(
      builder: (context, state) {
        if (state.status != UpdateUserInformationStatus.loading) {
          controller.text = state.user.studySchedule ?? '';
        }
        return TextField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
          maxLines: null,
          keyboardType: TextInputType.multiline,
          onChanged: (value) {
            context.read<UpdateUserInformationBloc>().add(
                UpdateUserInformationStudyScheduleFieldChanged(
                    studySchedule: value));
          },
        );
      },
    );
  }
}

class _SaveChangesButton extends StatelessWidget {
  const _SaveChangesButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInformationBloc, UpdateUserInformationState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed:
              state.status != UpdateUserInformationStatus.informationInvalid
                  ? () {
                      context
                          .read<UpdateUserInformationBloc>()
                          .add(UpdateUserInformationSaveChangesButtonPressed());
                    }
                  : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            minimumSize: const Size.fromHeight(48),
          ),
          child: Text(S.current.save_changes),
        );
      },
    );
  }
}
