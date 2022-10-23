import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';

class ScheduleDetail extends StatefulWidget {
  const ScheduleDetail({Key? key}) : super(key: key);

  @override
  State<ScheduleDetail> createState() => _ScheduleDetailState();
}

class _ScheduleDetailState extends State<ScheduleDetail> {

  var isEditing = false;

  Widget inforTutor(String tutorName, IconData flag, String nationality) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/avatar_tutor.jpg'),
            radius: 36
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tutorName, style: Theme
                    .of(context)
                    .textTheme
                    .headlineSmall,),
                const SizedBox(height: 4,),
                Row(
                  children: [
                    Icon(flag),
                    const SizedBox(width: 4,),
                    Text(nationality)
                  ],
                ),
                const SizedBox(height: 4,),
                TextButton.icon(
                  icon: const Icon(Icons.chat_bubble_outline, size: 20,),
                  label: const Text('Direct Message'),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget header(BuildContext context, String header) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const SizedBox(width: 24, child: Divider(),),
          const SizedBox(width: 8,),
          Text(header, style: Theme.of(context).textTheme.titleMedium,),
          const SizedBox(width: 8,),
          const Expanded(child: Divider())
        ],
      ),
    );
  }

  Widget description(String content) {
    return Padding(
      padding: const EdgeInsets.only(left: 48, top: 8),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text(content, textAlign: TextAlign.left,)
      ),
    );
  }

  Widget editRequest() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
          child: TextField(
            decoration: InputDecoration(
                border: (isEditing? const OutlineInputBorder() : const OutlineInputBorder(borderSide: BorderSide.none)),
                hintText: 'No request for lesson.',
                hintStyle: const TextStyle(color: Colors.black)
            ),
            maxLines: 10,
            readOnly: !isEditing,
          ),
        ),
        Positioned.fill(
          top: 8,
          right: 8,
          child: Align(
            alignment: Alignment.topRight,
            child: isEditing? const SizedBox(height: 0, width: 0,) : TextButton(
              child: const Text('Edit request'),
              onPressed: () {
                setState(() {
                  isEditing = true;
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tutor taught this lesson
                    inforTutor('April Azure', Icons.flag_outlined, 'France'),
                    const SizedBox(height: 24,),

                    // Time
                    header(context, 'Lesson Time'),
                    description('Fri, 14 Oct 22'),
                    description('10:30 - 10:55'),
                    const SizedBox(height: 16,),

                    // Request for lesson
                    header(context, 'Request for Lesson'),
                    editRequest(),
                    const SizedBox(height: 16,),
                    Center(
                      child: Visibility(
                        visible: isEditing,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      isEditing = false;
                                    });
                                  },
                                  child: const Text('Save'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () async {
                      return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Confirm cancel booking'),
                            content: const Text('Cancel booking lesson with April?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context, 'No');
                                },
                                child: const Text('No'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context, 'Confirm');
                                  Navigator.pop(context);
                                },
                                child: const Text('Confirm'),
                              )
                            ],
                          );
                        }
                      );
                    },
                    icon: const Icon(Icons.clear),
                  ),
                  const SizedBox(width: 24,),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteGenerator.meetingPage);
                      },
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)
                              )
                          ),
                          minimumSize: MaterialStateProperty.all(const Size(100, 48))
                      ),
                      child: const Text('Go to meeting'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
