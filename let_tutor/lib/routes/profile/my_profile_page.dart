import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // TODO: Tap avatar to edit
          // Avatar
          const CircleAvatar(
            backgroundColor: Colors.indigo,
            radius: 100,
            child: Text('AH'),
          ),
          const SizedBox(height: 16,),

          // Username title
          Text('April Hanzure', style: Theme.of(context).textTheme.headline6,),
          TextButton(
            child: const Text('Others review you'),
            onPressed: () {  },
          ),
          const SizedBox(height: 16,),

          // Username
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Username')
            ),
          ),
          const SizedBox(height: 16,),

          // Email address
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Email address'),
            ),
            enabled: false,
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

          // Phone number
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Phone')
            ),
            enabled: false,
          ),
          const SizedBox(height: 16,),

          // Birthday
          Container(
            child: TextFormField(
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
          ),
          const SizedBox(height: 16,),

          // My level
          Container(
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
          ),
          const SizedBox(height: 16,),

          // Want to learn
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
              value: categories.first,
              items: categories.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(value: value, child: Text(value));
              }).toList(),
              onChanged: (String? value) { },
            ),
          ),
          const SizedBox(height: 16,),

          // Study Schedule
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Study Schedule')
            ),
            maxLines: null,
            keyboardType: TextInputType.multiline,
          ),
          const SizedBox(height: 16,),

          // Button 'Save Changes'
          ElevatedButton(
            child: const Text('Save Changes'),
            onPressed: () { },
          ),
          const SizedBox(height: 16,),
        ],
      ),
    );
  }
}
