import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

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
              children: [
                _UserAvatar(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'username',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Text('You have 100 lesson left'),
                const SizedBox(
                  height: 8,
                ),
                TextButton(
                    onPressed: () {}, child: Text(S.current.others_review)),
                const SizedBox(
                  height: 16,
                ),
                _UsernameTextField(),
                const SizedBox(
                  height: 16,
                ),
                _EmailTextField(),
                const SizedBox(
                  height: 16,
                ),
                const _CountryField(),
                const SizedBox(
                  height: 16,
                ),
                _PhoneField(),
                const SizedBox(
                  height: 16,
                ),
                const _BirthdayField(),
                const SizedBox(
                  height: 16,
                ),
                const _LevelField(),
                const SizedBox(
                  height: 16,
                ),
                /*const _WantToLearnField(),
                const SizedBox(
                  height: 16,
                ),*/
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
            labelText: S.current.username,
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
            labelText: 'Email',
          ),
          readOnly: true,
          enabled: false,
        );
      },
    );
  }
}

class _CountryField extends StatefulWidget {
  const _CountryField({Key? key}) : super(key: key);

  @override
  State<_CountryField> createState() => _CountryFieldState();
}

class _CountryFieldState extends State<_CountryField> {
  static const Map<String, String> countries = {
    'Aruba': 'Aruba',
    'Australia': 'Australia',
    'Bolivia': 'Bolivia',
    'Canada': 'Canada',
    'Chad': 'Chad',
    'China': 'China',
    'Christmas Island': 'Christmas Island',
    'Colombia': 'Colombia',
    'Denmark': 'Denmark',
    'FR': 'France',
    'Guam': 'Guam',
    'Guernsey': 'Guernsey',
    'Hong Kong': 'Hong Kong',
    'Indonesia': 'Indonesia',
    'JP': 'Japan',
    'Kiribati': 'Kiribati',
    'Malaysia': 'Malaysia',
    'New Zealand': 'New Zealand',
    'Niue': 'Niue',
    'PH': 'Philippines (the)',
    'Saint Martin': 'Saint Martin',
    'Tunisia': 'Tunisia',
    'UK': 'United Kingdom',
    'Uganda': 'Uganda',
    'United Arab Emirates': 'United Arab Emirates',
    'VN': 'Viet Nam',
  };

  String selectedCountry = countries.keys.first;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInformationBloc, UpdateUserInformationState>(
      builder: (context, state) {
        if (state.status == UpdateUserInformationStatus.loadFirstSuccess) {
          selectedCountry =
              countries[state.user.country] ?? countries.keys.first;
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
                countries.values.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                selectedCountry = value!;
              });
              context.read<UpdateUserInformationBloc>().add(
                  UpdateUserInformationCountryFieldChanged(
                      country: countries.keys.firstWhere(
                          (element) => countries[element] == value)));
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
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: S.current.phone,
          ),
          keyboardType: TextInputType.phone,
          onChanged: (value) => context
              .read<UpdateUserInformationBloc>()
              .add(UpdateUserInformationPhoneFieldChanged(phone: value)),
        );
      },
    );
  }
}

class _BirthdayField extends StatefulWidget {
  const _BirthdayField({Key? key}) : super(key: key);

  @override
  State<_BirthdayField> createState() => _BirthdayFieldState();
}

class _BirthdayFieldState extends State<_BirthdayField> {
  String selectedBirthday = '';
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      context.read<UpdateUserInformationBloc>().add(
          UpdateUserInformationBirthdayFieldChanged(birthday: controller.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInformationBloc, UpdateUserInformationState>(
        builder: (context, state) {
      if (state.status == UpdateUserInformationStatus.loadFirstSuccess) {
        selectedBirthday = state.user.birthday ?? '';
        controller.text = selectedBirthday;
      }
      return TextFormField(
        controller: controller,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            label: Text(S.current.birthday)),
        readOnly: true,
        onTap: () async {
          DateTime? picked = await showDatePicker(
            context: context,
            initialDate: DateTime.parse(selectedBirthday),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
            helpText: S.current.select_birthday,
          );
          if (picked != null) {
            setState(() {
              selectedBirthday = DateFormat('yyyy-MM-dd').format(picked);
              controller.text = selectedBirthday;
            });
          }
        },
      );
    });
  }
}

class _LevelField extends StatefulWidget {
  const _LevelField({Key? key}) : super(key: key);

  @override
  State<_LevelField> createState() => _LevelFieldState();
}

class _LevelFieldState extends State<_LevelField> {
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
              setState(() {
                selectedLevel = value ?? '';
              });
              context.read<UpdateUserInformationBloc>().add(
                  UpdateUserInformationLevelFieldChanged(level: value ?? ''));
            },
          ),
        );
      },
    );
  }
}

/*class _WantToLearnField extends StatelessWidget {
  const _WantToLearnField({Key? key}) : super(key: key);

  static const List<String> categories = [
    'For Studying Abroad',
    'English For Traveling',
    'Conversational English',
    'English For Beginners',
    'Business English',
    'English For Kids',
    'STARTERS',
    'PET',
    'KET',
    'MOVERS',
    'FLYERS',
    'TOEFL',
    'TOEIC',
    'IELTS'
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInformationBloc, UpdateUserInformationState>(
      builder: (context, state) {
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
            value: state.user.requireNote ?? categories.first,
            items: categories.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: (String? value) {},
          ),
        );
      },
    );
  }
}*/

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
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            label: Text(S.current.study_schedule),
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
