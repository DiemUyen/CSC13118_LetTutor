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

  Widget header(BuildContext context, String header) {
    return Row(
      children: [
        const SizedBox(width: 24, child: Divider(),),
        const SizedBox(width: 8,),
        Text(header, style: Theme.of(context).textTheme.headline6,),
        const SizedBox(width: 8,),
        const Expanded(child: Divider())
      ],
    );
  }

  Widget introductionStepOne() {
    return Column(
      children: [
        const Icon(Icons.person_outline),
        Text('Set up your tutor profile', style: Theme.of(context).textTheme.headline6,),
        const Text('Your tutor profile is your chance to market yourself to students on Tutoring. You can make edits later on your profile settings page.'),
        const Text('New students may browse tutor profiles to find a tutor that fits their learning goals and personality. Returning students may use the tutor profiles to find tutors they\'ve had great experiences with already.')
      ],
    );
  }

  Widget avatar() {
    return InkWell(
      onTap: () {
        setState(() {

        });
      },
      child: SizedBox(
        height: 100,
        width: 100,
        child: Container(
          color: Colors.brown,
        ),
      ),
    );
  }

  Widget nameField() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Tutoring name'
      ),
    );
  }

  Widget countryField() {
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

  Widget interestField() {
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

  Widget educationField() {
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

  Widget experienceField() {
    return TextFormField(
      maxLines: null,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Experience'
      ),
    );
  }

  Widget positionField() {
    return TextFormField(
      maxLines: null,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Current or Previous Profession'
      ),
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

  Widget languagesField() {
    return TextFormField(
      maxLines: null,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Languages'
      ),
    );
  }

  Widget introductionTutorField() {
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
            introductionStepOne(),
            const SizedBox(height: 16,),

            // Basic Info
            header(context, 'Basic Info'),
            // Image avatar
            avatar(),
            const SizedBox(height: 16,),
            // Tutoring name
            nameField(),
            const SizedBox(height: 16,),
            // Country
            countryField(),
            const SizedBox(height: 16,),
            // Birthday
            birthdayField(),
            const SizedBox(height: 16,),

            // CV
            header(context, 'CV'),
            const SizedBox(height: 8,),
            // Interests
            interestField(),
            const SizedBox(height: 8,),
            // Education
            educationField(),
            const SizedBox(height: 8,),
            // Experience
            experienceField(),
            const SizedBox(height: 8,),
            // Current or Previous Profession
            positionField(),
            const SizedBox(height: 8,),
            // Certificate
            Row(
              children: const [
                Expanded(flex: 2, child: Text('Certificate Type', style: TextStyle(fontWeight: FontWeight.bold),)),
                Expanded(flex: 2, child: Text('Certificate', style: TextStyle(fontWeight: FontWeight.bold),)),
                Expanded(child: Text('Action', style: TextStyle(fontWeight: FontWeight.bold),))
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
            header(context, 'Languages I speak'),
            const SizedBox(height: 8,),
            languagesField(),
            const SizedBox(height: 16,),

            // Who I teach
            header(context, 'Who I teach'),
            // Introduction about tutor
            const SizedBox(height: 8,),
            introductionTutorField(),
            const SizedBox(height: 8,),

            // Best teaching
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('I am best at teaching students who are', style: TextStyle(fontWeight: FontWeight.bold))
            ),
            selectLevelStudents(),
            const SizedBox(height: 8,),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text('My specialities are', style: TextStyle(fontWeight: FontWeight.bold))
            ),
            selectSpecialities()
          ],
        )
    );
  }

  Widget introductionStepTwo() {
    return Column(
      children: [
        const Icon(Icons.video_stable_outlined),
        Text('Introduce yourself', style: Theme.of(context).textTheme.headline6,),
        const Text('Let students know what they can expect from a lesson with you by recording a video highlighting your teaching style, expertise and personality. Students can be nervous to speak with a foreigner, so it really helps to have a friendly video that introduces yourself and invites students to call you.'),
      ],
    );
  }
  
  Step stepTwo(BuildContext context) {
    return Step(
        isActive: _index >= 1,
        title: const Text('Video Introduction', style: TextStyle(fontSize: 12)),
        content: Column(
          children: [
            // Introduction step 2
            introductionStepTwo(),
            const SizedBox(height: 16,),

            // Introduction video
            header(context, 'Introduction video'),
            const SizedBox(height: 8,),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text('A few helpful tips', style: Theme.of(context).textTheme.subtitle2,),
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
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back Home'),
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
