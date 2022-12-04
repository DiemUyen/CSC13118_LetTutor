// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutor_course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TutorCourse _$TutorCourseFromJson(Map<String, dynamic> json) {
  return _TutorCourse.fromJson(json);
}

/// @nodoc
mixin _$TutorCourse {
  String? get userId => throw _privateConstructorUsedError;
  String? get courseId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorCourseCopyWith<TutorCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorCourseCopyWith<$Res> {
  factory $TutorCourseCopyWith(
          TutorCourse value, $Res Function(TutorCourse) then) =
      _$TutorCourseCopyWithImpl<$Res, TutorCourse>;
  @useResult
  $Res call(
      {String? userId, String? courseId, String? createdAt, String? updatedAt});
}

/// @nodoc
class _$TutorCourseCopyWithImpl<$Res, $Val extends TutorCourse>
    implements $TutorCourseCopyWith<$Res> {
  _$TutorCourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? courseId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TutorCourseCopyWith<$Res>
    implements $TutorCourseCopyWith<$Res> {
  factory _$$_TutorCourseCopyWith(
          _$_TutorCourse value, $Res Function(_$_TutorCourse) then) =
      __$$_TutorCourseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId, String? courseId, String? createdAt, String? updatedAt});
}

/// @nodoc
class __$$_TutorCourseCopyWithImpl<$Res>
    extends _$TutorCourseCopyWithImpl<$Res, _$_TutorCourse>
    implements _$$_TutorCourseCopyWith<$Res> {
  __$$_TutorCourseCopyWithImpl(
      _$_TutorCourse _value, $Res Function(_$_TutorCourse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? courseId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_TutorCourse(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TutorCourse implements _TutorCourse {
  const _$_TutorCourse(
      {this.userId, this.courseId, this.createdAt, this.updatedAt});

  factory _$_TutorCourse.fromJson(Map<String, dynamic> json) =>
      _$$_TutorCourseFromJson(json);

  @override
  final String? userId;
  @override
  final String? courseId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'TutorCourse(userId: $userId, courseId: $courseId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TutorCourse &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, courseId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TutorCourseCopyWith<_$_TutorCourse> get copyWith =>
      __$$_TutorCourseCopyWithImpl<_$_TutorCourse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorCourseToJson(
      this,
    );
  }
}

abstract class _TutorCourse implements TutorCourse {
  const factory _TutorCourse(
      {final String? userId,
      final String? courseId,
      final String? createdAt,
      final String? updatedAt}) = _$_TutorCourse;

  factory _TutorCourse.fromJson(Map<String, dynamic> json) =
      _$_TutorCourse.fromJson;

  @override
  String? get userId;
  @override
  String? get courseId;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TutorCourseCopyWith<_$_TutorCourse> get copyWith =>
      throw _privateConstructorUsedError;
}
