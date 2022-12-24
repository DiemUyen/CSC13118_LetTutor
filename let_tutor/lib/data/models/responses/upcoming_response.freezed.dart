// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcoming_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpcomingResponse _$UpcomingResponseFromJson(Map<String, dynamic> json) {
  return _UpcomingResponse.fromJson(json);
}

/// @nodoc
mixin _$UpcomingResponse {
  String? get message => throw _privateConstructorUsedError;
  List<NextSchedule>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpcomingResponseCopyWith<UpcomingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingResponseCopyWith<$Res> {
  factory $UpcomingResponseCopyWith(
          UpcomingResponse value, $Res Function(UpcomingResponse) then) =
      _$UpcomingResponseCopyWithImpl<$Res, UpcomingResponse>;
  @useResult
  $Res call({String? message, List<NextSchedule>? data});
}

/// @nodoc
class _$UpcomingResponseCopyWithImpl<$Res, $Val extends UpcomingResponse>
    implements $UpcomingResponseCopyWith<$Res> {
  _$UpcomingResponseCopyWithImpl(this._value, this._then);

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
              as List<NextSchedule>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpcomingResponseCopyWith<$Res>
    implements $UpcomingResponseCopyWith<$Res> {
  factory _$$_UpcomingResponseCopyWith(
          _$_UpcomingResponse value, $Res Function(_$_UpcomingResponse) then) =
      __$$_UpcomingResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<NextSchedule>? data});
}

/// @nodoc
class __$$_UpcomingResponseCopyWithImpl<$Res>
    extends _$UpcomingResponseCopyWithImpl<$Res, _$_UpcomingResponse>
    implements _$$_UpcomingResponseCopyWith<$Res> {
  __$$_UpcomingResponseCopyWithImpl(
      _$_UpcomingResponse _value, $Res Function(_$_UpcomingResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_UpcomingResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NextSchedule>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpcomingResponse implements _UpcomingResponse {
  const _$_UpcomingResponse({this.message, this.data});

  factory _$_UpcomingResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UpcomingResponseFromJson(json);

  @override
  final String? message;
  @override
  final List<NextSchedule>? data;

  @override
  String toString() {
    return 'UpcomingResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpcomingResponse &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpcomingResponseCopyWith<_$_UpcomingResponse> get copyWith =>
      __$$_UpcomingResponseCopyWithImpl<_$_UpcomingResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpcomingResponseToJson(
      this,
    );
  }
}

abstract class _UpcomingResponse implements UpcomingResponse {
  const factory _UpcomingResponse(
      {final String? message,
      final List<NextSchedule>? data}) = _$_UpcomingResponse;

  factory _UpcomingResponse.fromJson(Map<String, dynamic> json) =
      _$_UpcomingResponse.fromJson;

  @override
  String? get message;
  @override
  List<NextSchedule>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_UpcomingResponseCopyWith<_$_UpcomingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
