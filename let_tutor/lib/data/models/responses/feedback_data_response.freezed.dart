// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackDataResponse _$FeedbackDataResponseFromJson(Map<String, dynamic> json) {
  return _FeedbackDataResponse.fromJson(json);
}

/// @nodoc
mixin _$FeedbackDataResponse {
  int? get count => throw _privateConstructorUsedError;
  List<Feedbacks>? get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackDataResponseCopyWith<FeedbackDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackDataResponseCopyWith<$Res> {
  factory $FeedbackDataResponseCopyWith(FeedbackDataResponse value,
          $Res Function(FeedbackDataResponse) then) =
      _$FeedbackDataResponseCopyWithImpl<$Res, FeedbackDataResponse>;
  @useResult
  $Res call({int? count, List<Feedbacks>? rows});
}

/// @nodoc
class _$FeedbackDataResponseCopyWithImpl<$Res,
        $Val extends FeedbackDataResponse>
    implements $FeedbackDataResponseCopyWith<$Res> {
  _$FeedbackDataResponseCopyWithImpl(this._value, this._then);

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
              as List<Feedbacks>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeedbackDataResponseCopyWith<$Res>
    implements $FeedbackDataResponseCopyWith<$Res> {
  factory _$$_FeedbackDataResponseCopyWith(_$_FeedbackDataResponse value,
          $Res Function(_$_FeedbackDataResponse) then) =
      __$$_FeedbackDataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<Feedbacks>? rows});
}

/// @nodoc
class __$$_FeedbackDataResponseCopyWithImpl<$Res>
    extends _$FeedbackDataResponseCopyWithImpl<$Res, _$_FeedbackDataResponse>
    implements _$$_FeedbackDataResponseCopyWith<$Res> {
  __$$_FeedbackDataResponseCopyWithImpl(_$_FeedbackDataResponse _value,
      $Res Function(_$_FeedbackDataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? rows = freezed,
  }) {
    return _then(_$_FeedbackDataResponse(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      rows: freezed == rows
          ? _value._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<Feedbacks>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedbackDataResponse implements _FeedbackDataResponse {
  const _$_FeedbackDataResponse({this.count, final List<Feedbacks>? rows})
      : _rows = rows;

  factory _$_FeedbackDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackDataResponseFromJson(json);

  @override
  final int? count;
  final List<Feedbacks>? _rows;
  @override
  List<Feedbacks>? get rows {
    final value = _rows;
    if (value == null) return null;
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FeedbackDataResponse(count: $count, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedbackDataResponse &&
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
  _$$_FeedbackDataResponseCopyWith<_$_FeedbackDataResponse> get copyWith =>
      __$$_FeedbackDataResponseCopyWithImpl<_$_FeedbackDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackDataResponseToJson(
      this,
    );
  }
}

abstract class _FeedbackDataResponse implements FeedbackDataResponse {
  const factory _FeedbackDataResponse(
      {final int? count,
      final List<Feedbacks>? rows}) = _$_FeedbackDataResponse;

  factory _FeedbackDataResponse.fromJson(Map<String, dynamic> json) =
      _$_FeedbackDataResponse.fromJson;

  @override
  int? get count;
  @override
  List<Feedbacks>? get rows;
  @override
  @JsonKey(ignore: true)
  _$$_FeedbackDataResponseCopyWith<_$_FeedbackDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
