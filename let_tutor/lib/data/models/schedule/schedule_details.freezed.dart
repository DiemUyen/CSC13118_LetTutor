// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleDetails _$ScheduleDetailsFromJson(Map<String, dynamic> json) {
  return _ScheduleDetails.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDetails {
  int? get startPeriodTimestamp => throw _privateConstructorUsedError;
  int? get endPeriodTimestamp => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get scheduleId => throw _privateConstructorUsedError;
  String? get startPeriod => throw _privateConstructorUsedError;
  String? get endPeriod => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  List<BookingInfo>? get bookingInfo => throw _privateConstructorUsedError;
  bool? get isBooked => throw _privateConstructorUsedError;
  ScheduleInfo? get scheduleInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDetailsCopyWith<ScheduleDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDetailsCopyWith<$Res> {
  factory $ScheduleDetailsCopyWith(
          ScheduleDetails value, $Res Function(ScheduleDetails) then) =
      _$ScheduleDetailsCopyWithImpl<$Res, ScheduleDetails>;
  @useResult
  $Res call(
      {int? startPeriodTimestamp,
      int? endPeriodTimestamp,
      String? id,
      String? scheduleId,
      String? startPeriod,
      String? endPeriod,
      String? createdAt,
      String? updatedAt,
      List<BookingInfo>? bookingInfo,
      bool? isBooked,
      ScheduleInfo? scheduleInfo});

  $ScheduleInfoCopyWith<$Res>? get scheduleInfo;
}

/// @nodoc
class _$ScheduleDetailsCopyWithImpl<$Res, $Val extends ScheduleDetails>
    implements $ScheduleDetailsCopyWith<$Res> {
  _$ScheduleDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startPeriodTimestamp = freezed,
    Object? endPeriodTimestamp = freezed,
    Object? id = freezed,
    Object? scheduleId = freezed,
    Object? startPeriod = freezed,
    Object? endPeriod = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bookingInfo = freezed,
    Object? isBooked = freezed,
    Object? scheduleInfo = freezed,
  }) {
    return _then(_value.copyWith(
      startPeriodTimestamp: freezed == startPeriodTimestamp
          ? _value.startPeriodTimestamp
          : startPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      endPeriodTimestamp: freezed == endPeriodTimestamp
          ? _value.endPeriodTimestamp
          : endPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String?,
      startPeriod: freezed == startPeriod
          ? _value.startPeriod
          : startPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      endPeriod: freezed == endPeriod
          ? _value.endPeriod
          : endPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingInfo: freezed == bookingInfo
          ? _value.bookingInfo
          : bookingInfo // ignore: cast_nullable_to_non_nullable
              as List<BookingInfo>?,
      isBooked: freezed == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool?,
      scheduleInfo: freezed == scheduleInfo
          ? _value.scheduleInfo
          : scheduleInfo // ignore: cast_nullable_to_non_nullable
              as ScheduleInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleInfoCopyWith<$Res>? get scheduleInfo {
    if (_value.scheduleInfo == null) {
      return null;
    }

    return $ScheduleInfoCopyWith<$Res>(_value.scheduleInfo!, (value) {
      return _then(_value.copyWith(scheduleInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ScheduleDetailsCopyWith<$Res>
    implements $ScheduleDetailsCopyWith<$Res> {
  factory _$$_ScheduleDetailsCopyWith(
          _$_ScheduleDetails value, $Res Function(_$_ScheduleDetails) then) =
      __$$_ScheduleDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? startPeriodTimestamp,
      int? endPeriodTimestamp,
      String? id,
      String? scheduleId,
      String? startPeriod,
      String? endPeriod,
      String? createdAt,
      String? updatedAt,
      List<BookingInfo>? bookingInfo,
      bool? isBooked,
      ScheduleInfo? scheduleInfo});

  @override
  $ScheduleInfoCopyWith<$Res>? get scheduleInfo;
}

/// @nodoc
class __$$_ScheduleDetailsCopyWithImpl<$Res>
    extends _$ScheduleDetailsCopyWithImpl<$Res, _$_ScheduleDetails>
    implements _$$_ScheduleDetailsCopyWith<$Res> {
  __$$_ScheduleDetailsCopyWithImpl(
      _$_ScheduleDetails _value, $Res Function(_$_ScheduleDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startPeriodTimestamp = freezed,
    Object? endPeriodTimestamp = freezed,
    Object? id = freezed,
    Object? scheduleId = freezed,
    Object? startPeriod = freezed,
    Object? endPeriod = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bookingInfo = freezed,
    Object? isBooked = freezed,
    Object? scheduleInfo = freezed,
  }) {
    return _then(_$_ScheduleDetails(
      startPeriodTimestamp: freezed == startPeriodTimestamp
          ? _value.startPeriodTimestamp
          : startPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      endPeriodTimestamp: freezed == endPeriodTimestamp
          ? _value.endPeriodTimestamp
          : endPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String?,
      startPeriod: freezed == startPeriod
          ? _value.startPeriod
          : startPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      endPeriod: freezed == endPeriod
          ? _value.endPeriod
          : endPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingInfo: freezed == bookingInfo
          ? _value._bookingInfo
          : bookingInfo // ignore: cast_nullable_to_non_nullable
              as List<BookingInfo>?,
      isBooked: freezed == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool?,
      scheduleInfo: freezed == scheduleInfo
          ? _value.scheduleInfo
          : scheduleInfo // ignore: cast_nullable_to_non_nullable
              as ScheduleInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleDetails implements _ScheduleDetails {
  const _$_ScheduleDetails(
      {this.startPeriodTimestamp,
      this.endPeriodTimestamp,
      this.id,
      this.scheduleId,
      this.startPeriod,
      this.endPeriod,
      this.createdAt,
      this.updatedAt,
      final List<BookingInfo>? bookingInfo,
      this.isBooked,
      this.scheduleInfo})
      : _bookingInfo = bookingInfo;

  factory _$_ScheduleDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDetailsFromJson(json);

  @override
  final int? startPeriodTimestamp;
  @override
  final int? endPeriodTimestamp;
  @override
  final String? id;
  @override
  final String? scheduleId;
  @override
  final String? startPeriod;
  @override
  final String? endPeriod;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  final List<BookingInfo>? _bookingInfo;
  @override
  List<BookingInfo>? get bookingInfo {
    final value = _bookingInfo;
    if (value == null) return null;
    if (_bookingInfo is EqualUnmodifiableListView) return _bookingInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isBooked;
  @override
  final ScheduleInfo? scheduleInfo;

  @override
  String toString() {
    return 'ScheduleDetails(startPeriodTimestamp: $startPeriodTimestamp, endPeriodTimestamp: $endPeriodTimestamp, id: $id, scheduleId: $scheduleId, startPeriod: $startPeriod, endPeriod: $endPeriod, createdAt: $createdAt, updatedAt: $updatedAt, bookingInfo: $bookingInfo, isBooked: $isBooked, scheduleInfo: $scheduleInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleDetails &&
            (identical(other.startPeriodTimestamp, startPeriodTimestamp) ||
                other.startPeriodTimestamp == startPeriodTimestamp) &&
            (identical(other.endPeriodTimestamp, endPeriodTimestamp) ||
                other.endPeriodTimestamp == endPeriodTimestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.startPeriod, startPeriod) ||
                other.startPeriod == startPeriod) &&
            (identical(other.endPeriod, endPeriod) ||
                other.endPeriod == endPeriod) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._bookingInfo, _bookingInfo) &&
            (identical(other.isBooked, isBooked) ||
                other.isBooked == isBooked) &&
            (identical(other.scheduleInfo, scheduleInfo) ||
                other.scheduleInfo == scheduleInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      startPeriodTimestamp,
      endPeriodTimestamp,
      id,
      scheduleId,
      startPeriod,
      endPeriod,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_bookingInfo),
      isBooked,
      scheduleInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleDetailsCopyWith<_$_ScheduleDetails> get copyWith =>
      __$$_ScheduleDetailsCopyWithImpl<_$_ScheduleDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDetailsToJson(
      this,
    );
  }
}

abstract class _ScheduleDetails implements ScheduleDetails {
  const factory _ScheduleDetails(
      {final int? startPeriodTimestamp,
      final int? endPeriodTimestamp,
      final String? id,
      final String? scheduleId,
      final String? startPeriod,
      final String? endPeriod,
      final String? createdAt,
      final String? updatedAt,
      final List<BookingInfo>? bookingInfo,
      final bool? isBooked,
      final ScheduleInfo? scheduleInfo}) = _$_ScheduleDetails;

  factory _ScheduleDetails.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDetails.fromJson;

  @override
  int? get startPeriodTimestamp;
  @override
  int? get endPeriodTimestamp;
  @override
  String? get id;
  @override
  String? get scheduleId;
  @override
  String? get startPeriod;
  @override
  String? get endPeriod;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  List<BookingInfo>? get bookingInfo;
  @override
  bool? get isBooked;
  @override
  ScheduleInfo? get scheduleInfo;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleDetailsCopyWith<_$_ScheduleDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
