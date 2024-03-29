import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BecomeTutorPage extends StatefulWidget {
  const BecomeTutorPage({Key? key}) : super(key: key);

  @override
  State<BecomeTutorPage> createState() => _BecomeTutorPageState();
}

enum LevelStudent { Beginner, Intermediate, Advanced }

class _BecomeTutorPageState extends State<BecomeTutorPage> {

  var _index = 0;
  var selectedCountry = '';
  List<String> countries = ['Australia', 'Canada', 'China', 'Colombia', 'France', 'Indonesia', 'Japan', 'Malaysia', 'Philippines', 'UK', 'USA', 'Vietnam', 'Others'];
  var datePicker = '';
  List<String> tips = ['Find a clean and quiet space', 'Smile and look at the camera', 'Dress smart', 'Speak for 1 - 3 mintues', 'Brand yourself and have fun!'];
  var certificates = {0: {'Certificate Type': 'TOEIC', 'Certificate':'.png'}, 1: {'Certificate Type':'IELTS', 'Certificate':'.png'}};
  var certificateType = ['TOEIC', 'IELTS', 'TOEFL'];
  LevelStudent? _levelStudent = LevelStudent.Beginner;
  var selectedSpecialities = [false, false, false, false, false];
  var specialities = ['English for Kids', 'English for Business', 'TOEIC', 'IELTS', 'TOEFL'];

  Widget birthdayField() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          label: Text('Birthday')
      ),
      readOnly: true,
      onTap: () async {
        DateTime? picked = await showDatePicker(
          context: context,
          initialDate: DateTime(1990, 1, 1),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
          helpText: 'Select your birthday'
        );
        if (picked != null) {
          setState(() {
            datePicker = DateFormat('dd/MM/yyyy').format(picked);
          });
        }
      },
    );
  }

  Widget certificateDialog() {
    return SizedBox(
      width: 300,
      height: 150,
      child: Column(
        children: [
          DropdownButton<String>(
            isExpanded: true,
            underline: Container(
              height: 0,
            ),
            value: certificateType.first,
            items: certificateType.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: (String? value) { },
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Upload image'
            ),
            onTap: () { },
          )
        ],
      ),
    );
  }

  Widget addNewCertificateButton() {
    return OutlinedButton(
      child: const Text('Add new certificate'),
      onPressed: () async{
        return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Add certificate'),
                content: certificateDialog(),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context, 'Cancel');
                    },
                    child: const Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, 'Submit');
                    },
                    child: const Text('Submit'),
                  )
                ],
              );
            }
        );
      },
    );
  }

  Widget selectLevelStudents() {
    return Column(
      children: [
        RadioListTile(
          title: const Text('Beginner'),
          value: LevelStudent.Beginner,
          groupValue: _levelStudent,
          onChanged: (LevelStudent? value) {
            setState(() {
              _levelStudent = value;
            });
          },
        ),

        RadioListTile(
          title: const Text('Intermediate'),
          value: LevelStudent.Intermediate,
          groupValue: _levelStudent,
          onChanged: (LevelStudent? value) {
            setState(() {
              _levelStudent = value;
            });
          },
        ),

        RadioListTile(
          title: const Text('Advanced'),
          value: LevelStudent.Advanced,
          groupValue: _levelStudent,
          onChanged: (LevelStudent? value) {
            setState(() {
              _levelStudent = value;
            });
          },
        )
      ],
    );
  }

  Widget selectSpecialities() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: specialities.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
          value: selectedSpecialities[index],
          title: Text(specialities[index]),
          onChanged: (bool? value) {
            setState(() {
              selectedSpecialities[index] = value!;
            });
          },
        );
      },
    );
  }

  Step stepOne(BuildContext context) {
    return Step(
        isActive: _index >= 0,
        title: const Text('Complete Profile', style: TextStyle(fontSize: 12)),
        content: Column(
          children: [
            // Introduction step 1
            _IntroductionStepOne(context: context),
            const SizedBox(height: 16,),

            // Basic Info
            _Header(context: context, header: 'Basic Info'),
            // Image avatar
            const _Avatar(),
            const SizedBox(height: 16,),
            // Tutoring name
            const _NameField(),
            const SizedBox(height: 16,),
            // Country
            _CountryField(countries: countries),
            const SizedBox(height: 16,),
            // Birthday
            birthdayField(),
            const SizedBox(height: 16,),

            // CV
            _Header(context: context, header: 'CV'),
            const SizedBox(height: 8,),
            // Interests
            const _InterestField(),
            const SizedBox(height: 8,),
            // Education
            const _EducationField(),
            const SizedBox(height: 8,),
            // Experience
            const _ExperienceField(),
            const SizedBox(height: 8,),
            // Current or Previous Profession
            const _PositionField(),
            const SizedBox(height: 8,),
            // Certificate
            Row(
              children: [
                Expanded(flex: 2, child: Text('Certificate Type', style: Theme.of(context).textTheme.labelLarge,)),
                Expanded(flex: 2, child: Text('Certificate', style: Theme.of(context).textTheme.labelLarge,)),
                Expanded(child: Text('Action', style: Theme.of(context).textTheme.labelLarge,))
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: certificates.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Expanded(flex: 2, child: Text(certificates[index]!['Certificate Type']!)),
                    Expanded(flex: 2, child: Text(certificates[index]!['Certificate']!)),
                    Expanded(child: IconButton(onPressed: () { }, icon: const Icon(Icons.delete_outline),))
                  ],
                );
              },
            ),
            const SizedBox(height: 8,),
            addNewCertificateButton(),
            const SizedBox(height: 16,),

            // Languages I speak
            _Header(context: context, header: 'Languages I speak'),
            const SizedBox(height: 8,),
            const _LanguagesField(),
            const SizedBox(height: 16,),

            // Who I teach
            _Header(context: context, header: 'Who I teach'),
            // Introduction about tutor
            const SizedBox(height: 8,),
            const _IntroductionField(),
            const SizedBox(height: 8,),

            // Best teaching
            Align(
              alignment: Alignment.centerLeft,
              child: Text('I am best at teaching students who are', style: Theme.of(context).textTheme.labelLarge)
            ),
            selectLevelStudents(),
            const SizedBox(height: 8,),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('My specialities are', style: Theme.of(context).textTheme.labelLarge)
            ),
            selectSpecialities()
          ],
        )
    );
  }

  Step stepTwo(BuildContext context) {
    return Step(
        isActive: _index >= 1,
        title: const Text('Video Introduction', style: TextStyle(fontSize: 12)),
        content: Column(
          children: [
            // Introduction step 2
            _IntroductionStepTwo(context: context),
            const SizedBox(height: 16,),

            // Introduction video
            _Header(context: context, header: 'Introduction video'),
            const SizedBox(height: 8,),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text('A few helpful tips', style: Theme.of(context).textTheme.labelLarge,),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: tips.length,
                      itemBuilder: (context, index) {
                        return Text('${index + 1}. ${tips[index]}');
                      },
                    ),
                    const Text('Note: We only support uploading video file that is less than 64 MB in size.', style: TextStyle(color: Colors.redAccent),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16,),

            // Button 'Choose video'
            OutlinedButton(
              onPressed: () { },
              child: const Text('Choose video'),
            )
          ],
        )
    );
  }

  Step stepThree(BuildContext context) {
    return Step(
        isActive: _index == 2,
        title: const Text('Approval', style: TextStyle(fontSize: 12)),
        content: Center(
          child: Column(
            children: [
              const Icon(Icons.tag_faces_outlined),
              const Text('You have done all the steps'),
              const Text('Please wait for the operator\'s approval'),
              const SizedBox(height: 16,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Back Home'),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: LayoutBuilder(builder: (context, constraints) {
          return Stepper(
            physics: const ClampingScrollPhysics(),
            type: StepperType.horizontal,
            currentStep: _index,
            controlsBuilder: (BuildContext context, ControlsDetails details) {
              if (_index == 2) {
                return const SizedBox(height: 0,);
              }
              return Row(
                children: [
                  ElevatedButton(onPressed: details.onStepContinue, child: const Text('Next')),
                  TextButton(onPressed: details.onStepCancel, child: const Text('Back'),),
                ],
              );
            },
            onStepCancel: () {
              if (_index > 0) {
                setState(() {
                  _index -= 1;
                });
              }
            },
            onStepContinue: () {
              if (_index < 2) {
                setState(() {
                  _index += 1;
                });
              }
            },
            onStepTapped: (int index) {
              if (_index < 2) {
                setState(() {
                  _index = index;
                });
              }
            },
            steps: <Step>[
              stepOne(context),
              stepTwo(context),
              stepThree(context)
            ],
          );
        }),
      ),
    );
  }
}

class _IntroductionStepTwo extends StatelessWidget {
  const _IntroductionStepTwo({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.video_stable_outlined),
        Text('Introduce yourself', style: Theme.of(context).textTheme.headlineSmall,),
        const Text('Let students know what they can expect from a lesson with you by recording a video highlighting your teaching style, expertise and personality. Students can be nervous to speak with a foreigner, so it really helps to have a friendly video that introduces yourself and invites students to call you.'),
      ],
    );
  }
}

class _IntroductionField extends StatelessWidget {
  const _IntroductionField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: null,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintMaxLines: 3,
          hintText: "Example: 'I was a doctor and can help you practice business and medical English'",
          labelText: 'Introduction'
      ),
    );
  }
}

class _LanguagesField extends StatelessWidget {
  const _LanguagesField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: null,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Languages'
      ),
    );
  }
}

class _PositionField extends StatelessWidget {
  const _PositionField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: null,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Current or Previous Profession'
      ),
    );
  }
}

class _ExperienceField extends StatelessWidget {
  const _ExperienceField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: null,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Experience'
      ),
    );
  }
}

class _EducationField extends StatelessWidget {
  const _EducationField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: null,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintMaxLines: 3,
          hintText: "Example: 'Bachelor of Arts in English from Cambly University, Second Language Acquisition and Teaching certificate'",
          labelText: 'Education'
      ),
    );
  }
}

class _InterestField extends StatelessWidget {
  const _InterestField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: null,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintMaxLines: 3,
          hintText: 'Interests, hobbies, memorable life experiences, or anything else you\'d like to share',
          labelText: 'Interests'
      ),
    );
  }
}

class _CountryField extends StatelessWidget {
  const _CountryField({
    Key? key,
    required this.countries,
  }) : super(key: key);

  final List<String> countries;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black38),
          borderRadius: BorderRadius.circular(4)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButton<String>(
        isExpanded: true,
        underline: Container(
          height: 0,
        ),
        value: countries.first,
        items: countries.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        }).toList(),
        onChanged: (String? value) { },
      ),
    );
  }
}

class _NameField extends StatelessWidget {
  const _NameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Tutoring name'
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 100,
        width: 100,
        child: Container(
          color: Colors.brown,
        ),
      ),
    );
  }
}

class _IntroductionStepOne extends StatelessWidget {
  const _IntroductionStepOne({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.person_outline),
        Text('Set up your tutor profile', style: Theme.of(context).textTheme.headlineSmall,),
        const Text('Your tutor profile is your chance to market yourself to students on Tutoring. You can make edits later on your profile settings page.'),
        const Text('New students may browse tutor profiles to find a tutor that fits their learning goals and personality. Returning students may use the tutor profiles to find tutors they\'ve had great experiences with already.')
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
    required this.context,
    required this.header,
  }) : super(key: key);

  final BuildContext context;
  final String header;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 24, child: Divider(),),
        const SizedBox(width: 8,),
        Text(header, style: Theme.of(context).textTheme.headlineSmall,),
        const SizedBox(width: 8,),
        const Expanded(child: Divider())
      ],
    );
  }
}
