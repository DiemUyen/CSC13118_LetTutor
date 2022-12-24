// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_pack_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReferralPackInfo _$ReferralPackInfoFromJson(Map<String, dynamic> json) {
  return _ReferralPackInfo.fromJson(json);
}

/// @nodoc
mixin _$ReferralPackInfo {
  int? get earnPercent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralPackInfoCopyWith<ReferralPackInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralPackInfoCopyWith<$Res> {
  factory $ReferralPackInfoCopyWith(
          ReferralPackInfo value, $Res Function(ReferralPackInfo) then) =
      _$ReferralPackInfoCopyWithImpl<$Res, ReferralPackInfo>;
  @useResult
  $Res call({int? earnPercent});
}

/// @nodoc
class _$ReferralPackInfoCopyWithImpl<$Res, $Val extends ReferralPackInfo>
    implements $ReferralPackInfoCopyWith<$Res> {
  _$ReferralPackInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnPercent = freezed,
  }) {
    return _then(_value.copyWith(
      earnPercent: freezed == earnPercent
          ? _value.earnPercent
          : earnPercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReferralPackInfoCopyWith<$Res>
    implements $ReferralPackInfoCopyWith<$Res> {
  factory _$$_ReferralPackInfoCopyWith(
          _$_ReferralPackInfo value, $Res Function(_$_ReferralPackInfo) then) =
      __$$_ReferralPackInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? earnPercent});
}

/// @nodoc
class __$$_ReferralPackInfoCopyWithImpl<$Res>
    extends _$ReferralPackInfoCopyWithImpl<$Res, _$_ReferralPackInfo>
    implements _$$_ReferralPackInfoCopyWith<$Res> {
  __$$_ReferralPackInfoCopyWithImpl(
      _$_ReferralPackInfo _value, $Res Function(_$_ReferralPackInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnPercent = freezed,
  }) {
    return _then(_$_ReferralPackInfo(
      earnPercent: freezed == earnPercent
          ? _value.earnPercent
          : earnPercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReferralPackInfo implements _ReferralPackInfo {
  const _$_ReferralPackInfo({this.earnPercent});

  factory _$_ReferralPackInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ReferralPackInfoFromJson(json);

  @override
  final int? earnPercent;

  @override
  String toString() {
    return 'ReferralPackInfo(earnPercent: $earnPercent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReferralPackInfo &&
            (identical(other.earnPercent, earnPercent) ||
                other.earnPercent == earnPercent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, earnPercent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReferralPackInfoCopyWith<_$_ReferralPackInfo> get copyWith =>
      __$$_ReferralPackInfoCopyWithImpl<_$_ReferralPackInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReferralPackInfoToJson(
      this,
    );
  }
}

abstract class _ReferralPackInfo implements ReferralPackInfo {
  const factory _ReferralPackInfo({final int? earnPercent}) =
      _$_ReferralPackInfo;

  factory _ReferralPackInfo.fromJson(Map<String, dynamic> json) =
      _$_ReferralPackInfo.fromJson;

  @override
  int? get earnPercent;
  @override
  @JsonKey(ignore: true)
  _$$_ReferralPackInfoCopyWith<_$_ReferralPackInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
