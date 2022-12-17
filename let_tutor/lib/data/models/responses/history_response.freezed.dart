// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryResponse _$HistoryResponseFromJson(Map<String, dynamic> json) {
  return _HistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$HistoryResponse {
  String? get message => throw _privateConstructorUsedError;
  HistorySchedule? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryResponseCopyWith<HistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryResponseCopyWith<$Res> {
  factory $HistoryResponseCopyWith(
          HistoryResponse value, $Res Function(HistoryResponse) then) =
      _$HistoryResponseCopyWithImpl<$Res, HistoryResponse>;
  @useResult
  $Res call({String? message, HistorySchedule? data});

  $HistoryScheduleCopyWith<$Res>? get data;
}

/// @nodoc
class _$HistoryResponseCopyWithImpl<$Res, $Val extends HistoryResponse>
    implements $HistoryResponseCopyWith<$Res> {
  _$HistoryResponseCopyWithImpl(this._value, this._then);

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
              as HistorySchedule?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HistoryScheduleCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HistoryScheduleCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HistoryResponseCopyWith<$Res>
    implements $HistoryResponseCopyWith<$Res> {
  factory _$$_HistoryResponseCopyWith(
          _$_HistoryResponse value, $Res Function(_$_HistoryResponse) then) =
      __$$_HistoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, HistorySchedule? data});

  @override
  $HistoryScheduleCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_HistoryResponseCopyWithImpl<$Res>
    extends _$HistoryResponseCopyWithImpl<$Res, _$_HistoryResponse>
    implements _$$_HistoryResponseCopyWith<$Res> {
  __$$_HistoryResponseCopyWithImpl(
      _$_HistoryResponse _value, $Res Function(_$_HistoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_HistoryResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HistorySchedule?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HistoryResponse implements _HistoryResponse {
  const _$_HistoryResponse({this.message, this.data});

  factory _$_HistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryResponseFromJson(json);

  @override
  final String? message;
  @override
  final HistorySchedule? data;

  @override
  String toString() {
    return 'HistoryResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryResponseCopyWith<_$_HistoryResponse> get copyWith =>
      __$$_HistoryResponseCopyWithImpl<_$_HistoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryResponseToJson(
      this,
    );
  }
}

abstract class _HistoryResponse implements HistoryResponse {
  const factory _HistoryResponse(
      {final String? message,
      final HistorySchedule? data}) = _$_HistoryResponse;

  factory _HistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_HistoryResponse.fromJson;

  @override
  String? get message;
  @override
  HistorySchedule? get data;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryResponseCopyWith<_$_HistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
