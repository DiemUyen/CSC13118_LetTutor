part of 'course_detail_bloc.dart';

class CourseDetailState extends Equatable {
  const CourseDetailState({
    this.detailResponse = const CourseDetailResponse(),
    this.status = CourseDetailStatus.initial,
  });

  final CourseDetailResponse detailResponse;
  final CourseDetailStatus status;

  CourseDetailState copyWith({
    CourseDetailResponse? detailResponse,
    CourseDetailStatus? status,
  }) {
    return CourseDetailState(
      detailResponse: detailResponse ?? this.detailResponse,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [detailResponse, status];
}

enum CourseDetailStatus {
  initial,
  loading,
  loadSuccess,
  loadFailure,
}
