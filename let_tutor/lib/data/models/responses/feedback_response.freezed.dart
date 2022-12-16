// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackResponse _$FeedbackResponseFromJson(Map<String, dynamic> json) {
  return _FeedbackResponse.fromJson(json);
}

/// @nodoc
mixin _$FeedbackResponse {
  String? get message => throw _privateConstructorUsedError;
  FeedbackDataResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackResponseCopyWith<FeedbackResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackResponseCopyWith<$Res> {
  factory $FeedbackResponseCopyWith(
          FeedbackResponse value, $Res Function(FeedbackResponse) then) =
      _$FeedbackResponseCopyWithImpl<$Res, FeedbackResponse>;
  @useResult
  $Res call({String? message, FeedbackDataResponse? data});

  $FeedbackDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$FeedbackResponseCopyWithImpl<$Res, $Val extends FeedbackResponse>
    implements $FeedbackResponseCopyWith<$Res> {
  _$FeedbackResponseCopyWithImpl(this._value, this._then);

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
              as FeedbackDataResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedbackDataResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FeedbackDataResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FeedbackResponseCopyWith<$Res>
    implements $FeedbackResponseCopyWith<$Res> {
  factory _$$_FeedbackResponseCopyWith(
          _$_FeedbackResponse value, $Res Function(_$_FeedbackResponse) then) =
      __$$_FeedbackResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, FeedbackDataResponse? data});

  @override
  $FeedbackDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_FeedbackResponseCopyWithImpl<$Res>
    extends _$FeedbackResponseCopyWithImpl<$Res, _$_FeedbackResponse>
    implements _$$_FeedbackResponseCopyWith<$Res> {
  __$$_FeedbackResponseCopyWithImpl(
      _$_FeedbackResponse _value, $Res Function(_$_FeedbackResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_FeedbackResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FeedbackDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedbackResponse implements _FeedbackResponse {
  const _$_FeedbackResponse({this.message, this.data});

  factory _$_FeedbackResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackResponseFromJson(json);

  @override
  final String? message;
  @override
  final FeedbackDataResponse? data;

  @override
  String toString() {
    return 'FeedbackResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedbackResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedbackResponseCopyWith<_$_FeedbackResponse> get copyWith =>
      __$$_FeedbackResponseCopyWithImpl<_$_FeedbackResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackResponseToJson(
      this,
    );
  }
}

abstract class _FeedbackResponse implements FeedbackResponse {
  const factory _FeedbackResponse(
      {final String? message,
      final FeedbackDataResponse? data}) = _$_FeedbackResponse;

  factory _FeedbackResponse.fromJson(Map<String, dynamic> json) =
      _$_FeedbackResponse.fromJson;

  @override
  String? get message;
  @override
  FeedbackDataResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$$_FeedbackResponseCopyWith<_$_FeedbackResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
