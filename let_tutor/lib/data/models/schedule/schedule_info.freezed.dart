// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleInfo _$ScheduleInfoFromJson(Map<String, dynamic> json) {
  return _ScheduleInfo.fromJson(json);
}

/// @nodoc
mixin _$ScheduleInfo {
  String? get date => throw _privateConstructorUsedError;
  int? get startTimestamp => throw _privateConstructorUsedError;
  int? get endTimestamp => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get tutorId => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  Tutor? get tutorInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleInfoCopyWith<ScheduleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleInfoCopyWith<$Res> {
  factory $ScheduleInfoCopyWith(
          ScheduleInfo value, $Res Function(ScheduleInfo) then) =
      _$ScheduleInfoCopyWithImpl<$Res, ScheduleInfo>;
  @useResult
  $Res call(
      {String? date,
      int? startTimestamp,
      int? endTimestamp,
      String? id,
      String? tutorId,
      String? startTime,
      String? endTime,
      bool? isDeleted,
      String? createdAt,
      String? updatedAt,
      Tutor? tutorInfo});

  $TutorCopyWith<$Res>? get tutorInfo;
}

/// @nodoc
class _$ScheduleInfoCopyWithImpl<$Res, $Val extends ScheduleInfo>
    implements $ScheduleInfoCopyWith<$Res> {
  _$ScheduleInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? id = freezed,
    Object? tutorId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tutorInfo = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTimestamp: freezed == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      endTimestamp: freezed == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorId: freezed == tutorId
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorInfo: freezed == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as Tutor?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TutorCopyWith<$Res>? get tutorInfo {
    if (_value.tutorInfo == null) {
      return null;
    }

    return $TutorCopyWith<$Res>(_value.tutorInfo!, (value) {
      return _then(_value.copyWith(tutorInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ScheduleInfoCopyWith<$Res>
    implements $ScheduleInfoCopyWith<$Res> {
  factory _$$_ScheduleInfoCopyWith(
          _$_ScheduleInfo value, $Res Function(_$_ScheduleInfo) then) =
      __$$_ScheduleInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? date,
      int? startTimestamp,
      int? endTimestamp,
      String? id,
      String? tutorId,
      String? startTime,
      String? endTime,
      bool? isDeleted,
      String? createdAt,
      String? updatedAt,
      Tutor? tutorInfo});

  @override
  $TutorCopyWith<$Res>? get tutorInfo;
}

/// @nodoc
class __$$_ScheduleInfoCopyWithImpl<$Res>
    extends _$ScheduleInfoCopyWithImpl<$Res, _$_ScheduleInfo>
    implements _$$_ScheduleInfoCopyWith<$Res> {
  __$$_ScheduleInfoCopyWithImpl(
      _$_ScheduleInfo _value, $Res Function(_$_ScheduleInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? id = freezed,
    Object? tutorId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tutorInfo = freezed,
  }) {
    return _then(_$_ScheduleInfo(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTimestamp: freezed == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      endTimestamp: freezed == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorId: freezed == tutorId
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorInfo: freezed == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as Tutor?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleInfo implements _ScheduleInfo {
  const _$_ScheduleInfo(
      {this.date,
      this.startTimestamp,
      this.endTimestamp,
      this.id,
      this.tutorId,
      this.startTime,
      this.endTime,
      this.isDeleted,
      this.createdAt,
      this.updatedAt,
      this.tutorInfo});

  factory _$_ScheduleInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleInfoFromJson(json);

  @override
  final String? date;
  @override
  final int? startTimestamp;
  @override
  final int? endTimestamp;
  @override
  final String? id;
  @override
  final String? tutorId;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final bool? isDeleted;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final Tutor? tutorInfo;

  @override
  String toString() {
    return 'ScheduleInfo(date: $date, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, id: $id, tutorId: $tutorId, startTime: $startTime, endTime: $endTime, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, tutorInfo: $tutorInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleInfo &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTimestamp, startTimestamp) ||
                other.startTimestamp == startTimestamp) &&
            (identical(other.endTimestamp, endTimestamp) ||
                other.endTimestamp == endTimestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tutorId, tutorId) || other.tutorId == tutorId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.tutorInfo, tutorInfo) ||
                other.tutorInfo == tutorInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      startTimestamp,
      endTimestamp,
      id,
      tutorId,
      startTime,
      endTime,
      isDeleted,
      createdAt,
      updatedAt,
      tutorInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleInfoCopyWith<_$_ScheduleInfo> get copyWith =>
      __$$_ScheduleInfoCopyWithImpl<_$_ScheduleInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleInfoToJson(
      this,
    );
  }
}

abstract class _ScheduleInfo implements ScheduleInfo {
  const factory _ScheduleInfo(
      {final String? date,
      final int? startTimestamp,
      final int? endTimestamp,
      final String? id,
      final String? tutorId,
      final String? startTime,
      final String? endTime,
      final bool? isDeleted,
      final String? createdAt,
      final String? updatedAt,
      final Tutor? tutorInfo}) = _$_ScheduleInfo;

  factory _ScheduleInfo.fromJson(Map<String, dynamic> json) =
      _$_ScheduleInfo.fromJson;

  @override
  String? get date;
  @override
  int? get startTimestamp;
  @override
  int? get endTimestamp;
  @override
  String? get id;
  @override
  String? get tutorId;
  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  bool? get isDeleted;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  Tutor? get tutorInfo;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleInfoCopyWith<_$_ScheduleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
