// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learn_topics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LearnTopics _$LearnTopicsFromJson(Map<String, dynamic> json) {
  return _LearnTopics.fromJson(json);
}

/// @nodoc
mixin _$LearnTopics {
  int? get id => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearnTopicsCopyWith<LearnTopics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearnTopicsCopyWith<$Res> {
  factory $LearnTopicsCopyWith(
          LearnTopics value, $Res Function(LearnTopics) then) =
      _$LearnTopicsCopyWithImpl<$Res, LearnTopics>;
  @useResult
  $Res call({int? id, String? key, String? name});
}

/// @nodoc
class _$LearnTopicsCopyWithImpl<$Res, $Val extends LearnTopics>
    implements $LearnTopicsCopyWith<$Res> {
  _$LearnTopicsCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LearnTopicsCopyWith<$Res>
    implements $LearnTopicsCopyWith<$Res> {
  factory _$$_LearnTopicsCopyWith(
          _$_LearnTopics value, $Res Function(_$_LearnTopics) then) =
      __$$_LearnTopicsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? key, String? name});
}

/// @nodoc
class __$$_LearnTopicsCopyWithImpl<$Res>
    extends _$LearnTopicsCopyWithImpl<$Res, _$_LearnTopics>
    implements _$$_LearnTopicsCopyWith<$Res> {
  __$$_LearnTopicsCopyWithImpl(
      _$_LearnTopics _value, $Res Function(_$_LearnTopics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_LearnTopics(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LearnTopics implements _LearnTopics {
  const _$_LearnTopics({this.id, this.key, this.name});

  factory _$_LearnTopics.fromJson(Map<String, dynamic> json) =>
      _$$_LearnTopicsFromJson(json);

  @override
  final int? id;
  @override
  final String? key;
  @override
  final String? name;

  @override
  String toString() {
    return 'LearnTopics(id: $id, key: $key, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearnTopics &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearnTopicsCopyWith<_$_LearnTopics> get copyWith =>
      __$$_LearnTopicsCopyWithImpl<_$_LearnTopics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearnTopicsToJson(
      this,
    );
  }
}

abstract class _LearnTopics implements LearnTopics {
  const factory _LearnTopics(
      {final int? id, final String? key, final String? name}) = _$_LearnTopics;

  factory _LearnTopics.fromJson(Map<String, dynamic> json) =
      _$_LearnTopics.fromJson;

  @override
  int? get id;
  @override
  String? get key;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_LearnTopicsCopyWith<_$_LearnTopics> get copyWith =>
      throw _privateConstructorUsedError;
}
