import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdfx/pdfx.dart';

import '../../../../data/models/course/topics.dart';
import '../bloc/topic_detail_bloc.dart';

class TopicDetailView extends StatelessWidget {
  const TopicDetailView({Key? key, required this.topics}) : super(key: key);

  final Topics topics;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopicDetailBloc, TopicDetailState>(
      builder: (context, state) {
        if (state is TopicDetailLoadDoneState) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: PdfPageNumber(
                      controller: state.pdfControllerPinch,
                      builder: (_, loadingState, page, pageCount) => Container(
                        alignment: Alignment.center,
                        child: Text(
                          '$page/${pageCount ?? 0}',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Text(state.name),
                    const SizedBox(height: 8,),
                    Expanded(
                      child: PdfViewPinch(
                        builders: PdfViewPinchBuilders<DefaultBuilderOptions>(
                          options: const DefaultBuilderOptions(),
                          documentLoaderBuilder: (_) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          pageLoaderBuilder: (_) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorBuilder: (_, error) => Center(
                            child: Text('$error'),
                          ),
                        ),
                        controller: state.pdfControllerPinch,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(),
            body: Container(),
          ),
        );
      },
    );
  }
}
