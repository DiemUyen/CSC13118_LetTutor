// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistorySchedule _$HistoryScheduleFromJson(Map<String, dynamic> json) {
  return _HistorySchedule.fromJson(json);
}

/// @nodoc
mixin _$HistorySchedule {
  int? get count => throw _privateConstructorUsedError;
  List<NextSchedule>? get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryScheduleCopyWith<HistorySchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryScheduleCopyWith<$Res> {
  factory $HistoryScheduleCopyWith(
          HistorySchedule value, $Res Function(HistorySchedule) then) =
      _$HistoryScheduleCopyWithImpl<$Res, HistorySchedule>;
  @useResult
  $Res call({int? count, List<NextSchedule>? rows});
}

/// @nodoc
class _$HistoryScheduleCopyWithImpl<$Res, $Val extends HistorySchedule>
    implements $HistoryScheduleCopyWith<$Res> {
  _$HistoryScheduleCopyWithImpl(this._value, this._then);

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
              as List<NextSchedule>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistoryScheduleCopyWith<$Res>
    implements $HistoryScheduleCopyWith<$Res> {
  factory _$$_HistoryScheduleCopyWith(
          _$_HistorySchedule value, $Res Function(_$_HistorySchedule) then) =
      __$$_HistoryScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<NextSchedule>? rows});
}

/// @nodoc
class __$$_HistoryScheduleCopyWithImpl<$Res>
    extends _$HistoryScheduleCopyWithImpl<$Res, _$_HistorySchedule>
    implements _$$_HistoryScheduleCopyWith<$Res> {
  __$$_HistoryScheduleCopyWithImpl(
      _$_HistorySchedule _value, $Res Function(_$_HistorySchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? rows = freezed,
  }) {
    return _then(_$_HistorySchedule(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      rows: freezed == rows
          ? _value._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<NextSchedule>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HistorySchedule implements _HistorySchedule {
  const _$_HistorySchedule({this.count, final List<NextSchedule>? rows})
      : _rows = rows;

  factory _$_HistorySchedule.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryScheduleFromJson(json);

  @override
  final int? count;
  final List<NextSchedule>? _rows;
  @override
  List<NextSchedule>? get rows {
    final value = _rows;
    if (value == null) return null;
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistorySchedule(count: $count, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistorySchedule &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._rows, _rows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_rows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryScheduleCopyWith<_$_HistorySchedule> get copyWith =>
      __$$_HistoryScheduleCopyWithImpl<_$_HistorySchedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryScheduleToJson(
      this,
    );
  }
}

abstract class _HistorySchedule implements HistorySchedule {
  const factory _HistorySchedule(
      {final int? count, final List<NextSchedule>? rows}) = _$_HistorySchedule;

  factory _HistorySchedule.fromJson(Map<String, dynamic> json) =
      _$_HistorySchedule.fromJson;

  @override
  int? get count;
  @override
  List<NextSchedule>? get rows;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryScheduleCopyWith<_$_HistorySchedule> get copyWith =>
      throw _privateConstructorUsedError;
}
