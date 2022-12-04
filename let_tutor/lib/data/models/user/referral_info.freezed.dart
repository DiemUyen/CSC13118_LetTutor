// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReferralInfo _$ReferralInfoFromJson(Map<String, dynamic> json) {
  return _ReferralInfo.fromJson(json);
}

/// @nodoc
mixin _$ReferralInfo {
  String? get referralCode => throw _privateConstructorUsedError;
  ReferralPackInfo? get referralPackInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralInfoCopyWith<ReferralInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralInfoCopyWith<$Res> {
  factory $ReferralInfoCopyWith(
          ReferralInfo value, $Res Function(ReferralInfo) then) =
      _$ReferralInfoCopyWithImpl<$Res, ReferralInfo>;
  @useResult
  $Res call({String? referralCode, ReferralPackInfo? referralPackInfo});

  $ReferralPackInfoCopyWith<$Res>? get referralPackInfo;
}

/// @nodoc
class _$ReferralInfoCopyWithImpl<$Res, $Val extends ReferralInfo>
    implements $ReferralInfoCopyWith<$Res> {
  _$ReferralInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCode = freezed,
    Object? referralPackInfo = freezed,
  }) {
    return _then(_value.copyWith(
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referralPackInfo: freezed == referralPackInfo
          ? _value.referralPackInfo
          : referralPackInfo // ignore: cast_nullable_to_non_nullable
              as ReferralPackInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferralPackInfoCopyWith<$Res>? get referralPackInfo {
    if (_value.referralPackInfo == null) {
      return null;
    }

    return $ReferralPackInfoCopyWith<$Res>(_value.referralPackInfo!, (value) {
      return _then(_value.copyWith(referralPackInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReferralInfoCopyWith<$Res>
    implements $ReferralInfoCopyWith<$Res> {
  factory _$$_ReferralInfoCopyWith(
          _$_ReferralInfo value, $Res Function(_$_ReferralInfo) then) =
      __$$_ReferralInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? referralCode, ReferralPackInfo? referralPackInfo});

  @override
  $ReferralPackInfoCopyWith<$Res>? get referralPackInfo;
}

/// @nodoc
class __$$_ReferralInfoCopyWithImpl<$Res>
    extends _$ReferralInfoCopyWithImpl<$Res, _$_ReferralInfo>
    implements _$$_ReferralInfoCopyWith<$Res> {
  __$$_ReferralInfoCopyWithImpl(
      _$_ReferralInfo _value, $Res Function(_$_ReferralInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCode = freezed,
    Object? referralPackInfo = freezed,
  }) {
    return _then(_$_ReferralInfo(
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referralPackInfo: freezed == referralPackInfo
          ? _value.referralPackInfo
          : referralPackInfo // ignore: cast_nullable_to_non_nullable
              as ReferralPackInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReferralInfo implements _ReferralInfo {
  const _$_ReferralInfo({this.referralCode, this.referralPackInfo});

  factory _$_ReferralInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ReferralInfoFromJson(json);

  @override
  final String? referralCode;
  @override
  final ReferralPackInfo? referralPackInfo;

  @override
  String toString() {
    return 'ReferralInfo(referralCode: $referralCode, referralPackInfo: $referralPackInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReferralInfo &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.referralPackInfo, referralPackInfo) ||
                other.referralPackInfo == referralPackInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, referralCode, referralPackInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReferralInfoCopyWith<_$_ReferralInfo> get copyWith =>
      __$$_ReferralInfoCopyWithImpl<_$_ReferralInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReferralInfoToJson(
      this,
    );
  }
}

abstract class _ReferralInfo implements ReferralInfo {
  const factory _ReferralInfo(
      {final String? referralCode,
      final ReferralPackInfo? referralPackInfo}) = _$_ReferralInfo;

  factory _ReferralInfo.fromJson(Map<String, dynamic> json) =
      _$_ReferralInfo.fromJson;

  @override
  String? get referralCode;
  @override
  ReferralPackInfo? get referralPackInfo;
  @override
  @JsonKey(ignore: true)
  _$$_ReferralInfoCopyWith<_$_ReferralInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
