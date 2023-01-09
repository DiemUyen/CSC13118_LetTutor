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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<TopicDetailBloc>()
        ..add(
          TopicDetailInit(widget.topic),
        ),
      child: TopicDetailView(topics: widget.topic,),
    );
  }
}
