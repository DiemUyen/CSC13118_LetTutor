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
    return Column(
      children: [
        // Avatar
        CircleAvatar(
          backgroundColor: Colors.indigo,
          child: Text('AH'),
          radius: 100,
        ),
        SizedBox(height: 16,),

        // Username title
        Text('April Hanzure', style: Theme.of(context).textTheme.headline6,),
        TextButton(
          child: Text('Others review you'),
          onPressed: () {  },
        ),
        SizedBox(height: 16,),

        // Username
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Username')
          ),
        ),
        SizedBox(height: 16,),

        // Email address
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Email address'),
          ),
          enabled: false,
        ),
        SizedBox(height: 16,),

        // Country
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black38),
            borderRadius: BorderRadius.circular(4)
          ),
          padding: EdgeInsets.symmetric(horizontal: 10),
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
        SizedBox(height: 16,),

        // Phone number
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Phone')
          ),
          enabled: false,
        ),
        SizedBox(height: 16,),

        // Birthday
        Container(
          child: TextFormField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
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
        SizedBox(height: 16,),

        // My level
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black38),
              borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10),
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
        SizedBox(height: 16,),

        // Want to learn
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black38),
              borderRadius: BorderRadius.circular(4)
          ),
          padding: EdgeInsets.symmetric(horizontal: 10),
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
        SizedBox(height: 16,),

        // Study Schedule
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Study Schedule')
          ),
          maxLines: null,
          keyboardType: TextInputType.multiline,
        ),
        SizedBox(height: 16,),

        // Button 'Save Changes'
        ElevatedButton(
          child: Text('Save Changes'),
          onPressed: () { },
        ),
        SizedBox(height: 16,),
      ],
    );
  }
}
