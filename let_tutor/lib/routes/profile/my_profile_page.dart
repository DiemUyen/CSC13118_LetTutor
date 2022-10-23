import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {

  var selectedCountry = '';
  List<String> countries = ['Australia', 'Canada', 'China', 'Colombia', 'France', 'Indonesia', 'Japan', 'Malaysia', 'Philippines', 'UK', 'USA', 'Vietnam', 'Others'];
  var datePicker = '';
  List<String> levels = ['Pre A1 (Beginner)', 'A1 (Higher Beginner)', 'A2 (Pre-Intermediate)', 'B1 (Intermediate)', 'B2 (Upper-Intermediate)', 'C1 (Advanced)', 'C2 (Proficiency)'];
  List<String> categories = ['For Studying Abroad', 'English For Traveling', 'Conversational English', 'English For Beginners', 'Business English', 'English For Kids',
    'STARTERS', 'PET', 'KET', 'MOVERS', 'FLYERS', 'TOEFL', 'TOEIC', 'IELTS'];
  var selectedLevel = '';

  Widget avatar() {
    return const CircleAvatar(
      backgroundImage: AssetImage('assets/avatar_user.jpg'),
      radius: 100
    );
  }

  Widget usernameField() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          label: Text('Username')
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        label: Text('Email address'),
      ),
      enabled: false,
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

  Widget phoneField() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          label: Text('Phone')
      ),
      enabled: false,
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

  Widget levelField() {
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
        value: levels.first,
        items: levels.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        }).toList(),
        onChanged: (String? value) { },
      ),
    );
  }

  Widget wantToLearnField() {
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
        value: categories.first,
        items: categories.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        }).toList(),
        onChanged: (String? value) { },
      ),
    );
  }

  Widget saveChangesButton() {
    return ElevatedButton(
      child: const Text('Save Changes'),
      onPressed: () {
        setState(() {

        });
      },
    );
  }

  Widget studyScheduleField() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          label: Text('Study Schedule')
      ),
      maxLines: null,
      keyboardType: TextInputType.multiline,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              // TODO: Tap avatar to edit
              // Avatar
              avatar(),
              const SizedBox(height: 16,),

              // Username title
              Text('Diem Uyen', style: Theme.of(context).textTheme.headline6,),
              const Text('You have 100 lessons left'),
              const SizedBox(height: 8,),
              TextButton(
                child: const Text('Others review you'),
                onPressed: () {  },
              ),
              const SizedBox(height: 16,),

              // Username
              usernameField(),
              const SizedBox(height: 16,),

              // Email address
              emailField(),
              const SizedBox(height: 16,),

              // Country
              countryField(),
              const SizedBox(height: 16,),

              // Phone number
              phoneField(),
              const SizedBox(height: 16,),

              // Birthday
              birthdayField(),
              const SizedBox(height: 16,),

              // My level
              levelField(),
              const SizedBox(height: 16,),

              // Want to learn
              wantToLearnField(),
              const SizedBox(height: 16,),

              // Study Schedule
              studyScheduleField(),
              const SizedBox(height: 16,),

              // Button 'Save Changes'
              saveChangesButton(),
              const SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
}
