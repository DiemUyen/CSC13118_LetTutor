// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleResponse _$ScheduleResponseFromJson(Map<String, dynamic> json) {
  return _ScheduleResponse.fromJson(json);
}

/// @nodoc
mixin _$ScheduleResponse {
  String? get message => throw _privateConstructorUsedError;
  List<ScheduleOfTutor>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleResponseCopyWith<ScheduleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleResponseCopyWith<$Res> {
  factory $ScheduleResponseCopyWith(
          ScheduleResponse value, $Res Function(ScheduleResponse) then) =
      _$ScheduleResponseCopyWithImpl<$Res, ScheduleResponse>;
  @useResult
  $Res call({String? message, List<ScheduleOfTutor>? data});
}

/// @nodoc
class _$ScheduleResponseCopyWithImpl<$Res, $Val extends ScheduleResponse>
    implements $ScheduleResponseCopyWith<$Res> {
  _$ScheduleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ScheduleOfTutor>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleResponseCopyWith<$Res>
    implements $ScheduleResponseCopyWith<$Res> {
  factory _$$_ScheduleResponseCopyWith(
          _$_ScheduleResponse value, $Res Function(_$_ScheduleResponse) then) =
      __$$_ScheduleResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<ScheduleOfTutor>? data});
}

/// @nodoc
class __$$_ScheduleResponseCopyWithImpl<$Res>
    extends _$ScheduleResponseCopyWithImpl<$Res, _$_ScheduleResponse>
    implements _$$_ScheduleResponseCopyWith<$Res> {
  __$$_ScheduleResponseCopyWithImpl(
      _$_ScheduleResponse _value, $Res Function(_$_ScheduleResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ScheduleResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ScheduleOfTutor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleResponse implements _ScheduleResponse {
  const _$_ScheduleResponse({this.message, final List<ScheduleOfTutor>? data})
      : _data = data;

  factory _$_ScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleResponseFromJson(json);

  @override
  final String? message;
  final List<ScheduleOfTutor>? _data;
  @override
  List<ScheduleOfTutor>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScheduleResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleResponse &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleResponseCopyWith<_$_ScheduleResponse> get copyWith =>
      __$$_ScheduleResponseCopyWithImpl<_$_ScheduleResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleResponseToJson(
      this,
    );
  }
}

abstract class _ScheduleResponse implements ScheduleResponse {
  const factory _ScheduleResponse(
      {final String? message,
      final List<ScheduleOfTutor>? data}) = _$_ScheduleResponse;

  factory _ScheduleResponse.fromJson(Map<String, dynamic> json) =
      _$_ScheduleResponse.fromJson;

  @override
  String? get message;
  @override
  List<ScheduleOfTutor>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleResponseCopyWith<_$_ScheduleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
