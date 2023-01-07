// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_reason.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CancelReason _$CancelReasonFromJson(Map<String, dynamic> json) {
  return _CancelReason.fromJson(json);
}

/// @nodoc
mixin _$CancelReason {
  int? get id => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancelReasonCopyWith<CancelReason> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelReasonCopyWith<$Res> {
  factory $CancelReasonCopyWith(
          CancelReason value, $Res Function(CancelReason) then) =
      _$CancelReasonCopyWithImpl<$Res, CancelReason>;
  @useResult
  $Res call({int? id, String? reason});
}

/// @nodoc
class _$CancelReasonCopyWithImpl<$Res, $Val extends CancelReason>
    implements $CancelReasonCopyWith<$Res> {
  _$CancelReasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CancelReasonCopyWith<$Res>
    implements $CancelReasonCopyWith<$Res> {
  factory _$$_CancelReasonCopyWith(
          _$_CancelReason value, $Res Function(_$_CancelReason) then) =
      __$$_CancelReasonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? reason});
}

/// @nodoc
class __$$_CancelReasonCopyWithImpl<$Res>
    extends _$CancelReasonCopyWithImpl<$Res, _$_CancelReason>
    implements _$$_CancelReasonCopyWith<$Res> {
  __$$_CancelReasonCopyWithImpl(
      _$_CancelReason _value, $Res Function(_$_CancelReason) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$_CancelReason(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CancelReason implements _CancelReason {
  const _$_CancelReason({this.id, this.reason});

  factory _$_CancelReason.fromJson(Map<String, dynamic> json) =>
      _$$_CancelReasonFromJson(json);

  @override
  final int? id;
  @override
  final String? reason;

  @override
  String toString() {
    return 'CancelReason(id: $id, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancelReason &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancelReasonCopyWith<_$_CancelReason> get copyWith =>
      __$$_CancelReasonCopyWithImpl<_$_CancelReason>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CancelReasonToJson(
      this,
    );
  }
}

abstract class _CancelReason implements CancelReason {
  const factory _CancelReason({final int? id, final String? reason}) =
      _$_CancelReason;

  factory _CancelReason.fromJson(Map<String, dynamic> json) =
      _$_CancelReason.fromJson;

  @override
  int? get id;
  @override
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$_CancelReasonCopyWith<_$_CancelReason> get copyWith =>
      throw _privateConstructorUsedError;
}
