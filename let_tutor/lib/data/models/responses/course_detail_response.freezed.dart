// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseDetailResponse _$CourseDetailResponseFromJson(Map<String, dynamic> json) {
  return _CourseDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$CourseDetailResponse {
  String? get message => throw _privateConstructorUsedError;
  Courses? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseDetailResponseCopyWith<CourseDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailResponseCopyWith<$Res> {
  factory $CourseDetailResponseCopyWith(CourseDetailResponse value,
          $Res Function(CourseDetailResponse) then) =
      _$CourseDetailResponseCopyWithImpl<$Res, CourseDetailResponse>;
  @useResult
  $Res call({String? message, Courses? data});

  $CoursesCopyWith<$Res>? get data;
}

/// @nodoc
class _$CourseDetailResponseCopyWithImpl<$Res,
        $Val extends CourseDetailResponse>
    implements $CourseDetailResponseCopyWith<$Res> {
  _$CourseDetailResponseCopyWithImpl(this._value, this._then);

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
              as Courses?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoursesCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CoursesCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CourseDetailResponseCopyWith<$Res>
    implements $CourseDetailResponseCopyWith<$Res> {
  factory _$$_CourseDetailResponseCopyWith(_$_CourseDetailResponse value,
          $Res Function(_$_CourseDetailResponse) then) =
      __$$_CourseDetailResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Courses? data});

  @override
  $CoursesCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_CourseDetailResponseCopyWithImpl<$Res>
    extends _$CourseDetailResponseCopyWithImpl<$Res, _$_CourseDetailResponse>
    implements _$$_CourseDetailResponseCopyWith<$Res> {
  __$$_CourseDetailResponseCopyWithImpl(_$_CourseDetailResponse _value,
      $Res Function(_$_CourseDetailResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CourseDetailResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Courses?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseDetailResponse implements _CourseDetailResponse {
  const _$_CourseDetailResponse({this.message, this.data});

  factory _$_CourseDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CourseDetailResponseFromJson(json);

  @override
  final String? message;
  @override
  final Courses? data;

  @override
  String toString() {
    return 'CourseDetailResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseDetailResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseDetailResponseCopyWith<_$_CourseDetailResponse> get copyWith =>
      __$$_CourseDetailResponseCopyWithImpl<_$_CourseDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseDetailResponseToJson(
      this,
    );
  }
}

abstract class _CourseDetailResponse implements CourseDetailResponse {
  const factory _CourseDetailResponse(
      {final String? message, final Courses? data}) = _$_CourseDetailResponse;

  factory _CourseDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_CourseDetailResponse.fromJson;

  @override
  String? get message;
  @override
  Courses? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CourseDetailResponseCopyWith<_$_CourseDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
