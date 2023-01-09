// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_schedule_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentScheduleResponse _$StudentScheduleResponseFromJson(
    Map<String, dynamic> json) {
  return _StudentScheduleResponse.fromJson(json);
}

/// @nodoc
mixin _$StudentScheduleResponse {
  int? get count => throw _privateConstructorUsedError;
  List<NextSchedule>? get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentScheduleResponseCopyWith<StudentScheduleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentScheduleResponseCopyWith<$Res> {
  factory $StudentScheduleResponseCopyWith(StudentScheduleResponse value,
          $Res Function(StudentScheduleResponse) then) =
      _$StudentScheduleResponseCopyWithImpl<$Res, StudentScheduleResponse>;
  @useResult
  $Res call({int? count, List<NextSchedule>? rows});
}

/// @nodoc
class _$StudentScheduleResponseCopyWithImpl<$Res,
        $Val extends StudentScheduleResponse>
    implements $StudentScheduleResponseCopyWith<$Res> {
  _$StudentScheduleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? rows = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      rows: freezed == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<NextSchedule>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentScheduleResponseCopyWith<$Res>
    implements $StudentScheduleResponseCopyWith<$Res> {
  factory _$$_StudentScheduleResponseCopyWith(_$_StudentScheduleResponse value,
          $Res Function(_$_StudentScheduleResponse) then) =
      __$$_StudentScheduleResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<NextSchedule>? rows});
}

/// @nodoc
class __$$_StudentScheduleResponseCopyWithImpl<$Res>
    extends _$StudentScheduleResponseCopyWithImpl<$Res,
        _$_StudentScheduleResponse>
    implements _$$_StudentScheduleResponseCopyWith<$Res> {
  __$$_StudentScheduleResponseCopyWithImpl(_$_StudentScheduleResponse _value,
      $Res Function(_$_StudentScheduleResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? rows = freezed,
  }) {
    return _then(_$_StudentScheduleResponse(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      rows: freezed == rows
          ? _value._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<NextSchedule>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudentScheduleResponse implements _StudentScheduleResponse {
  const _$_StudentScheduleResponse({this.count, final List<NextSchedule>? rows})
      : _rows = rows;

  factory _$_StudentScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StudentScheduleResponseFromJson(json);

  @override
  final int? count;
  final List<NextSchedule>? _rows;
  @override
  List<NextSchedule>? get rows {
    final value = _rows;
    if (value == null) return null;
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StudentScheduleResponse(count: $count, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentScheduleResponse &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._rows, _rows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_rows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentScheduleResponseCopyWith<_$_StudentScheduleResponse>
      get copyWith =>
          __$$_StudentScheduleResponseCopyWithImpl<_$_StudentScheduleResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentScheduleResponseToJson(
      this,
    );
  }
}

abstract class _StudentScheduleResponse implements StudentScheduleResponse {
  const factory _StudentScheduleResponse(
      {final int? count,
      final List<NextSchedule>? rows}) = _$_StudentScheduleResponse;

  factory _StudentScheduleResponse.fromJson(Map<String, dynamic> json) =
      _$_StudentScheduleResponse.fromJson;

  @override
  int? get count;
  @override
  List<NextSchedule>? get rows;
  @override
  @JsonKey(ignore: true)
  _$$_StudentScheduleResponseCopyWith<_$_StudentScheduleResponse>
      get copyWith => throw _privateConstructorUsedError;
}
