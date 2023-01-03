import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_file/internet_file.dart';
import 'package:pdfx/pdfx.dart';

import '../../../../data/models/course/topics.dart';

part 'topic_detail_event.dart';
part 'topic_detail_state.dart';

class TopicDetailBloc extends Bloc<TopicDetailEvent, TopicDetailState> {
  TopicDetailBloc() : super(const TopicDetailInitState()) {
    on<TopicDetailInit>(_onInit);
  }

  void _onInit(TopicDetailInit event, Emitter emit) {
    final pdfControllerPinch = PdfControllerPinch(
      document: PdfDocument.openData(
        InternetFile.get(event.topic.nameFile!),
      ),
    );
    emit(TopicDetailLoadDoneState(pdfControllerPinch, event.topic.name!));
  }
}
