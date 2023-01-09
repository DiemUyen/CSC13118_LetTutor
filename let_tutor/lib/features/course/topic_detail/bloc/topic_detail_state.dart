part of 'topic_detail_bloc.dart';

abstract class TopicDetailState extends Equatable {
  const TopicDetailState();
}

class TopicDetailInitState extends TopicDetailState {
  const TopicDetailInitState();

  @override
  List<Object?> get props => [];
}

class TopicDetailLoadingState extends TopicDetailState {
  const TopicDetailLoadingState();

  @override
  List<Object?> get props => [];
}

class TopicDetailLoadDoneState extends TopicDetailState {
  const TopicDetailLoadDoneState(this.pdfControllerPinch, this.name);

  final PdfControllerPinch pdfControllerPinch;
  final String name;

  @override
  List<Object?> get props => [pdfControllerPinch, name];
}

class TopicDetailLoadFailureState extends TopicDetailState {
  const TopicDetailLoadFailureState();

  @override
  List<Object?> get props => [];
}