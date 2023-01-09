part of 'topic_detail_bloc.dart';

abstract class TopicDetailEvent extends Equatable {
  const TopicDetailEvent();
}

class TopicDetailInit extends TopicDetailEvent {
  const TopicDetailInit(this.topic);

  final Topics topic;

  @override
  List<Object?> get props => [topic];
}