// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseDataResponse _$CourseDataResponseFromJson(Map<String, dynamic> json) {
  return _CourseDataResponse.fromJson(json);
}

/// @nodoc
mixin _$CourseDataResponse {
  int? get count => throw _privateConstructorUsedError;
  List<Courses>? get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseDataResponseCopyWith<CourseDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDataResponseCopyWith<$Res> {
  factory $CourseDataResponseCopyWith(
          CourseDataResponse value, $Res Function(CourseDataResponse) then) =
      _$CourseDataResponseCopyWithImpl<$Res, CourseDataResponse>;
  @useResult
  $Res call({int? count, List<Courses>? rows});
}

/// @nodoc
class _$CourseDataResponseCopyWithImpl<$Res, $Val extends CourseDataResponse>
    implements $CourseDataResponseCopyWith<$Res> {
  _$CourseDataResponseCopyWithImpl(this._value, this._then);

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
              as List<Courses>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseDataResponseCopyWith<$Res>
    implements $CourseDataResponseCopyWith<$Res> {
  factory _$$_CourseDataResponseCopyWith(_$_CourseDataResponse value,
          $Res Function(_$_CourseDataResponse) then) =
      __$$_CourseDataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<Courses>? rows});
}

/// @nodoc
class __$$_CourseDataResponseCopyWithImpl<$Res>
    extends _$CourseDataResponseCopyWithImpl<$Res, _$_CourseDataResponse>
    implements _$$_CourseDataResponseCopyWith<$Res> {
  __$$_CourseDataResponseCopyWithImpl(
      _$_CourseDataResponse _value, $Res Function(_$_CourseDataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? rows = freezed,
  }) {
    return _then(_$_CourseDataResponse(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      rows: freezed == rows
          ? _value._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<Courses>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseDataResponse implements _CourseDataResponse {
  const _$_CourseDataResponse({this.count, final List<Courses>? rows})
      : _rows = rows;

  factory _$_CourseDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CourseDataResponseFromJson(json);

  @override
  final int? count;
  final List<Courses>? _rows;
  @override
  List<Courses>? get rows {
    final value = _rows;
    if (value == null) return null;
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CourseDataResponse(count: $count, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseDataResponse &&
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
  _$$_CourseDataResponseCopyWith<_$_CourseDataResponse> get copyWith =>
      __$$_CourseDataResponseCopyWithImpl<_$_CourseDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseDataResponseToJson(
      this,
    );
  }
}

abstract class _CourseDataResponse implements CourseDataResponse {
  const factory _CourseDataResponse(
      {final int? count, final List<Courses>? rows}) = _$_CourseDataResponse;

  factory _CourseDataResponse.fromJson(Map<String, dynamic> json) =
      _$_CourseDataResponse.fromJson;

  @override
  int? get count;
  @override
  List<Courses>? get rows;
  @override
  @JsonKey(ignore: true)
  _$$_CourseDataResponseCopyWith<_$_CourseDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
