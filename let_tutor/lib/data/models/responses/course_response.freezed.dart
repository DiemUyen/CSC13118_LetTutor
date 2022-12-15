// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseResponse _$CourseResponseFromJson(Map<String, dynamic> json) {
  return _CourseResponse.fromJson(json);
}

/// @nodoc
mixin _$CourseResponse {
  String? get message => throw _privateConstructorUsedError;
  CourseDataResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseResponseCopyWith<CourseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseResponseCopyWith<$Res> {
  factory $CourseResponseCopyWith(
          CourseResponse value, $Res Function(CourseResponse) then) =
      _$CourseResponseCopyWithImpl<$Res, CourseResponse>;
  @useResult
  $Res call({String? message, CourseDataResponse? data});

  $CourseDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$CourseResponseCopyWithImpl<$Res, $Val extends CourseResponse>
    implements $CourseResponseCopyWith<$Res> {
  _$CourseResponseCopyWithImpl(this._value, this._then);

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
              as CourseDataResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseDataResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CourseDataResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CourseResponseCopyWith<$Res>
    implements $CourseResponseCopyWith<$Res> {
  factory _$$_CourseResponseCopyWith(
          _$_CourseResponse value, $Res Function(_$_CourseResponse) then) =
      __$$_CourseResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, CourseDataResponse? data});

  @override
  $CourseDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_CourseResponseCopyWithImpl<$Res>
    extends _$CourseResponseCopyWithImpl<$Res, _$_CourseResponse>
    implements _$$_CourseResponseCopyWith<$Res> {
  __$$_CourseResponseCopyWithImpl(
      _$_CourseResponse _value, $Res Function(_$_CourseResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CourseResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CourseDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseResponse implements _CourseResponse {
  const _$_CourseResponse({this.message, this.data});

  factory _$_CourseResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CourseResponseFromJson(json);

  @override
  final String? message;
  @override
  final CourseDataResponse? data;

  @override
  String toString() {
    return 'CourseResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseResponseCopyWith<_$_CourseResponse> get copyWith =>
      __$$_CourseResponseCopyWithImpl<_$_CourseResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseResponseToJson(
      this,
    );
  }
}

abstract class _CourseResponse implements CourseResponse {
  const factory _CourseResponse(
      {final String? message,
      final CourseDataResponse? data}) = _$_CourseResponse;

  factory _CourseResponse.fromJson(Map<String, dynamic> json) =
      _$_CourseResponse.fromJson;

  @override
  String? get message;
  @override
  CourseDataResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CourseResponseCopyWith<_$_CourseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
