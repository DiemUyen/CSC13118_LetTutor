// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_preparation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestPreparation _$TestPreparationFromJson(Map<String, dynamic> json) {
  return _TestPreparation.fromJson(json);
}

/// @nodoc
mixin _$TestPreparation {
  int? get id => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestPreparationCopyWith<TestPreparation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestPreparationCopyWith<$Res> {
  factory $TestPreparationCopyWith(
          TestPreparation value, $Res Function(TestPreparation) then) =
      _$TestPreparationCopyWithImpl<$Res, TestPreparation>;
  @useResult
  $Res call(
      {int? id,
      String? key,
      String? name,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$TestPreparationCopyWithImpl<$Res, $Val extends TestPreparation>
    implements $TestPreparationCopyWith<$Res> {
  _$TestPreparationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_TestPreparationCopyWith<$Res>
    implements $TestPreparationCopyWith<$Res> {
  factory _$$_TestPreparationCopyWith(
          _$_TestPreparation value, $Res Function(_$_TestPreparation) then) =
      __$$_TestPreparationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? key,
      String? name,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_TestPreparationCopyWithImpl<$Res>
    extends _$TestPreparationCopyWithImpl<$Res, _$_TestPreparation>
    implements _$$_TestPreparationCopyWith<$Res> {
  __$$_TestPreparationCopyWithImpl(
      _$_TestPreparation _value, $Res Function(_$_TestPreparation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_TestPreparation(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_TestPreparation implements _TestPreparation {
  const _$_TestPreparation(
      {this.id, this.key, this.name, this.createdAt, this.updatedAt});

  factory _$_TestPreparation.fromJson(Map<String, dynamic> json) =>
      _$$_TestPreparationFromJson(json);

  @override
  final int? id;
  @override
  final String? key;
  @override
  final String? name;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'TestPreparation(id: $id, key: $key, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestPreparation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, key, name, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestPreparationCopyWith<_$_TestPreparation> get copyWith =>
      __$$_TestPreparationCopyWithImpl<_$_TestPreparation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestPreparationToJson(
      this,
    );
  }
}

abstract class _TestPreparation implements TestPreparation {
  const factory _TestPreparation(
      {final int? id,
      final String? key,
      final String? name,
      final String? createdAt,
      final String? updatedAt}) = _$_TestPreparation;

  factory _TestPreparation.fromJson(Map<String, dynamic> json) =
      _$_TestPreparation.fromJson;

  @override
  int? get id;
  @override
  String? get key;
  @override
  String? get name;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TestPreparationCopyWith<_$_TestPreparation> get copyWith =>
      throw _privateConstructorUsedError;
}
