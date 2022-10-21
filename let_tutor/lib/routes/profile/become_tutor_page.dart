import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:intl/intl.dart';

class BecomeTutorPage extends StatefulWidget {
  const BecomeTutorPage({Key? key}) : super(key: key);

  @override
  State<BecomeTutorPage> createState() => _BecomeTutorPageState();
}

class _BecomeTutorPageState extends State<BecomeTutorPage> {

  var _index = 0;
  var selectedCountry = '';
  List<String> countries = ['Australia', 'Canada', 'China', 'Colombia', 'France', 'Indonesia', 'Japan', 'Malaysia', 'Philippines', 'UK', 'USA', 'Vietnam', 'Others'];
  var datePicker = '';
  List<String> tips = ['Find a clean and quiet space', 'Smile and look at the camera', 'Dress smart', 'Speak for 1 - 3 mintues', 'Brand yourself and have fun!'];

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

  Step stepOne(BuildContext context) {
    return Step(
        isActive: _index >= 0,
        title: const Text('Complete Profile', style: TextStyle(fontSize: 12)),
        content: Column(
          children: [
            // Introduction
            Column(
              children: [
                const Icon(Icons.person_outline),
                Text('Set up your tutor profile', style: Theme.of(context).textTheme.headline6,),
                const Text('Your tutor profile is your chance to market yourself to students on Tutoring. You can make edits later on your profile settings page.'),
                const Text('New students may browse tutor profiles to find a tutor that fits their learning goals and personality. Returning students may use the tutor profiles to find tutors they\'ve had great experiences with already.')
              ],
            ),
            const SizedBox(height: 16,),

            // Basic Info
            header(context, 'Basic Info'),
            // Image avatar
            InkWell(
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
            ),
            const SizedBox(height: 16,),
            // Tutoring name
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tutoring name'
              ),
            ),
            const SizedBox(height: 16,),

            // Country
            Container(
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
            ),
            const SizedBox(height: 16,),

            // Birthday
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Birthday')
              ),
              readOnly: true,
              onTap: () async {
                DateTime? picked = await showRoundedDatePicker(
                    context: context,
                    initialDate: DateTime(1990, 1, 1),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                    borderRadius: 24
                );
                if (picked != null) {
                  setState(() {
                    datePicker = DateFormat('dd/MM/yyyy').format(picked);
                  });
                }
              },
            ),
            const SizedBox(height: 16,),


            // CV
            header(context, 'CV'),
            const SizedBox(height: 8,),

            // Interests
            TextFormField(
              maxLines: null,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintMaxLines: 3,
                  hintText: 'Interests, hobbies, memorable life experiences, or anything else you\'d like to share',
                  labelText: 'Interests'
              ),
            ),
            const SizedBox(height: 8,),

            // Education
            TextFormField(
              maxLines: null,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintMaxLines: 3,
                  hintText: "Example: 'Bachelor of Arts in English from Cambly University, Second Language Acquisition and Teaching certificate'",
                  labelText: 'Education'
              ),
            ),
            const SizedBox(height: 8,),

            // Experience
            TextFormField(
              maxLines: null,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Experience'
              ),
            ),
            const SizedBox(height: 8,),

            // Current or Previous Profession
            TextFormField(
              maxLines: null,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Current or Previous Profession'
              ),
            ),
            const SizedBox(height: 8,),

            // Certificate
            // TODO: Add table to see certificate
            OutlinedButton(
              child: const Text('Add new certificate'),
              onPressed: () { },
            ),
            const SizedBox(height: 16,),


            // Languages I speak
            header(context, 'Languages I speak'),
            const SizedBox(height: 8,),
            TextFormField(
              maxLines: null,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Languages'
              ),
            ),
            const SizedBox(height: 16,),


            // Who I teach
            header(context, 'Who I teach'),

            // Introduction
            const SizedBox(height: 8,),
            TextFormField(
              maxLines: null,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintMaxLines: 3,
                  hintText: "Example: 'I was a doctor and can help you practice business and medical English'",
                  labelText: 'Introduction'
              ),
            ),
            const SizedBox(height: 8,),

            // Best teaching
            //TODO: best teaching + Specialities
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
            // Introduction
            const Icon(Icons.video_stable_outlined),
            Text('Introduce yourself', style: Theme.of(context).textTheme.headline6,),
            const Text('Let students know what they can expect from a lesson with you by recording a video highlighting your teaching style, expertise and personality. Students can be nervous to speak with a foreigner, so it really helps to have a friendly video that introduces yourself and invites students to call you.'),
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
              ElevatedButton(
                onPressed: () { },
                child: const Text('Back Home'),
              )
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth,
          height: 800,
          child: Stepper(
            type: StepperType.horizontal,
            currentStep: _index,
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
              setState(() {
                _index = index;
              });
            },
            steps: <Step>[
              stepOne(context),
              stepTwo(context),
              stepThree(context)
            ],
          ),
        );
      }),
    );
  }
}