// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LessonStatus _$LessonStatusFromJson(Map<String, dynamic> json) {
  return _LessonStatus.fromJson(json);
}

/// @nodoc
mixin _$LessonStatus {
  int? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonStatusCopyWith<LessonStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonStatusCopyWith<$Res> {
  factory $LessonStatusCopyWith(
          LessonStatus value, $Res Function(LessonStatus) then) =
      _$LessonStatusCopyWithImpl<$Res, LessonStatus>;
  @useResult
  $Res call({int? id, String? status, String? createdAt, String? updatedAt});
}

/// @nodoc
class _$LessonStatusCopyWithImpl<$Res, $Val extends LessonStatus>
    implements $LessonStatusCopyWith<$Res> {
  _$LessonStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_LessonStatusCopyWith<$Res>
    implements $LessonStatusCopyWith<$Res> {
  factory _$$_LessonStatusCopyWith(
          _$_LessonStatus value, $Res Function(_$_LessonStatus) then) =
      __$$_LessonStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? status, String? createdAt, String? updatedAt});
}

/// @nodoc
class __$$_LessonStatusCopyWithImpl<$Res>
    extends _$LessonStatusCopyWithImpl<$Res, _$_LessonStatus>
    implements _$$_LessonStatusCopyWith<$Res> {
  __$$_LessonStatusCopyWithImpl(
      _$_LessonStatus _value, $Res Function(_$_LessonStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_LessonStatus(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$_LessonStatus implements _LessonStatus {
  const _$_LessonStatus({this.id, this.status, this.createdAt, this.updatedAt});

  factory _$_LessonStatus.fromJson(Map<String, dynamic> json) =>
      _$$_LessonStatusFromJson(json);

  @override
  final int? id;
  @override
  final String? status;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'LessonStatus(id: $id, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonStatus &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, status, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonStatusCopyWith<_$_LessonStatus> get copyWith =>
      __$$_LessonStatusCopyWithImpl<_$_LessonStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonStatusToJson(
      this,
    );
  }
}

abstract class _LessonStatus implements LessonStatus {
  const factory _LessonStatus(
      {final int? id,
      final String? status,
      final String? createdAt,
      final String? updatedAt}) = _$_LessonStatus;

  factory _LessonStatus.fromJson(Map<String, dynamic> json) =
      _$_LessonStatus.fromJson;

  @override
  int? get id;
  @override
  String? get status;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LessonStatusCopyWith<_$_LessonStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
