import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/course/topics.dart';
import '../../../../injector/injector.dart';
import '../bloc/topic_detail_bloc.dart';
import 'topic_detail_view.dart';

class TopicsPage extends StatefulWidget {
  const TopicsPage({Key? key, required this.topic}) : super(key: key);

  final Topics topic;

  @override
  State<TopicsPage> createState() => _TopicsPageState();
}

class _TopicsPageState extends State<TopicsPage> {
  /*final topicsName = ['The Internet', 'Artificial Intelligence', 'Social Media', 'Internet Privacy', 'Live Streaming'];

  Widget topicsDropdownList() {
    return DropdownButton<String>(
      isExpanded: true,
      value: topicsName.first,
      items: topicsName.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(
            '${topicsName.indexOf(value) + 1}.     $value'
        ),);
      }).toList(),
      onChanged: (String? value) { },
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<TopicDetailBloc>()
        ..add(
          TopicDetailInit(widget.topic),
        ),
      child: const TopicDetailView(),
    );
  }
}
