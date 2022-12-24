// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tutors _$TutorsFromJson(Map<String, dynamic> json) {
  return _Tutors.fromJson(json);
}

/// @nodoc
mixin _$Tutors {
  int? get count => throw _privateConstructorUsedError;
  List<Tutor>? get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorsCopyWith<Tutors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorsCopyWith<$Res> {
  factory $TutorsCopyWith(Tutors value, $Res Function(Tutors) then) =
      _$TutorsCopyWithImpl<$Res, Tutors>;
  @useResult
  $Res call({int? count, List<Tutor>? rows});
}

/// @nodoc
class _$TutorsCopyWithImpl<$Res, $Val extends Tutors>
    implements $TutorsCopyWith<$Res> {
  _$TutorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? rows = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      rows: freezed == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<Tutor>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TutorsCopyWith<$Res> implements $TutorsCopyWith<$Res> {
  factory _$$_TutorsCopyWith(_$_Tutors value, $Res Function(_$_Tutors) then) =
      __$$_TutorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<Tutor>? rows});
}

/// @nodoc
class __$$_TutorsCopyWithImpl<$Res>
    extends _$TutorsCopyWithImpl<$Res, _$_Tutors>
    implements _$$_TutorsCopyWith<$Res> {
  __$$_TutorsCopyWithImpl(_$_Tutors _value, $Res Function(_$_Tutors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? rows = freezed,
  }) {
    return _then(_$_Tutors(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      rows: freezed == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<Tutor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tutors implements _Tutors {
  const _$_Tutors({this.count, this.rows});

  factory _$_Tutors.fromJson(Map<String, dynamic> json) =>
      _$$_TutorsFromJson(json);

  @override
  final int? count;
  @override
  final List<Tutor>? rows;

  @override
  String toString() {
    return 'Tutors(count: $count, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tutors &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other.rows, rows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(rows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TutorsCopyWith<_$_Tutors> get copyWith =>
      __$$_TutorsCopyWithImpl<_$_Tutors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorsToJson(
      this,
    );
  }
}

abstract class _Tutors implements Tutors {
  const factory _Tutors({final int? count, final List<Tutor>? rows}) =
      _$_Tutors;

  factory _Tutors.fromJson(Map<String, dynamic> json) = _$_Tutors.fromJson;

  @override
  int? get count;
  @override
  List<Tutor>? get rows;
  @override
  @JsonKey(ignore: true)
  _$$_TutorsCopyWith<_$_Tutors> get copyWith =>
      throw _privateConstructorUsedError;
}
