// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_tutor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteTutor _$FavoriteTutorFromJson(Map<String, dynamic> json) {
  return _FavoriteTutor.fromJson(json);
}

/// @nodoc
mixin _$FavoriteTutor {
  String? get id => throw _privateConstructorUsedError;
  String? get firstId => throw _privateConstructorUsedError;
  String? get secondId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  SecondInfo? get secondInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteTutorCopyWith<FavoriteTutor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteTutorCopyWith<$Res> {
  factory $FavoriteTutorCopyWith(
          FavoriteTutor value, $Res Function(FavoriteTutor) then) =
      _$FavoriteTutorCopyWithImpl<$Res, FavoriteTutor>;
  @useResult
  $Res call(
      {String? id,
      String? firstId,
      String? secondId,
      String? createdAt,
      String? updatedAt,
      SecondInfo? secondInfo});

  $SecondInfoCopyWith<$Res>? get secondInfo;
}

/// @nodoc
class _$FavoriteTutorCopyWithImpl<$Res, $Val extends FavoriteTutor>
    implements $FavoriteTutorCopyWith<$Res> {
  _$FavoriteTutorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstId = freezed,
    Object? secondId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? secondInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstId: freezed == firstId
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String?,
      secondId: freezed == secondId
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      secondInfo: freezed == secondInfo
          ? _value.secondInfo
          : secondInfo // ignore: cast_nullable_to_non_nullable
              as SecondInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SecondInfoCopyWith<$Res>? get secondInfo {
    if (_value.secondInfo == null) {
      return null;
    }

    return $SecondInfoCopyWith<$Res>(_value.secondInfo!, (value) {
      return _then(_value.copyWith(secondInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FavoriteTutorCopyWith<$Res>
    implements $FavoriteTutorCopyWith<$Res> {
  factory _$$_FavoriteTutorCopyWith(
          _$_FavoriteTutor value, $Res Function(_$_FavoriteTutor) then) =
      __$$_FavoriteTutorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? firstId,
      String? secondId,
      String? createdAt,
      String? updatedAt,
      SecondInfo? secondInfo});

  @override
  $SecondInfoCopyWith<$Res>? get secondInfo;
}

/// @nodoc
class __$$_FavoriteTutorCopyWithImpl<$Res>
    extends _$FavoriteTutorCopyWithImpl<$Res, _$_FavoriteTutor>
    implements _$$_FavoriteTutorCopyWith<$Res> {
  __$$_FavoriteTutorCopyWithImpl(
      _$_FavoriteTutor _value, $Res Function(_$_FavoriteTutor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstId = freezed,
    Object? secondId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? secondInfo = freezed,
  }) {
    return _then(_$_FavoriteTutor(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstId: freezed == firstId
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String?,
      secondId: freezed == secondId
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      secondInfo: freezed == secondInfo
          ? _value.secondInfo
          : secondInfo // ignore: cast_nullable_to_non_nullable
              as SecondInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteTutor implements _FavoriteTutor {
  const _$_FavoriteTutor(
      {this.id,
      this.firstId,
      this.secondId,
      this.createdAt,
      this.updatedAt,
      this.secondInfo});

  factory _$_FavoriteTutor.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteTutorFromJson(json);

  @override
  final String? id;
  @override
  final String? firstId;
  @override
  final String? secondId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final SecondInfo? secondInfo;

  @override
  String toString() {
    return 'FavoriteTutor(id: $id, firstId: $firstId, secondId: $secondId, createdAt: $createdAt, updatedAt: $updatedAt, secondInfo: $secondInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteTutor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstId, firstId) || other.firstId == firstId) &&
            (identical(other.secondId, secondId) ||
                other.secondId == secondId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.secondInfo, secondInfo) ||
                other.secondInfo == secondInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, firstId, secondId, createdAt, updatedAt, secondInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteTutorCopyWith<_$_FavoriteTutor> get copyWith =>
      __$$_FavoriteTutorCopyWithImpl<_$_FavoriteTutor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteTutorToJson(
      this,
    );
  }
}

abstract class _FavoriteTutor implements FavoriteTutor {
  const factory _FavoriteTutor(
      {final String? id,
      final String? firstId,
      final String? secondId,
      final String? createdAt,
      final String? updatedAt,
      final SecondInfo? secondInfo}) = _$_FavoriteTutor;

  factory _FavoriteTutor.fromJson(Map<String, dynamic> json) =
      _$_FavoriteTutor.fromJson;

  @override
  String? get id;
  @override
  String? get firstId;
  @override
  String? get secondId;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  SecondInfo? get secondInfo;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteTutorCopyWith<_$_FavoriteTutor> get copyWith =>
      throw _privateConstructorUsedError;
}
