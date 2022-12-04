// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tokens.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tokens _$TokensFromJson(Map<String, dynamic> json) {
  return _Tokens.fromJson(json);
}

/// @nodoc
mixin _$Tokens {
  Access? get access => throw _privateConstructorUsedError;
  Access? get refresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokensCopyWith<Tokens> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokensCopyWith<$Res> {
  factory $TokensCopyWith(Tokens value, $Res Function(Tokens) then) =
      _$TokensCopyWithImpl<$Res, Tokens>;
  @useResult
  $Res call({Access? access, Access? refresh});

  $AccessCopyWith<$Res>? get access;
  $AccessCopyWith<$Res>? get refresh;
}

/// @nodoc
class _$TokensCopyWithImpl<$Res, $Val extends Tokens>
    implements $TokensCopyWith<$Res> {
  _$TokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = freezed,
    Object? refresh = freezed,
  }) {
    return _then(_value.copyWith(
      access: freezed == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as Access?,
      refresh: freezed == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as Access?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccessCopyWith<$Res>? get access {
    if (_value.access == null) {
      return null;
    }

    return $AccessCopyWith<$Res>(_value.access!, (value) {
      return _then(_value.copyWith(access: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccessCopyWith<$Res>? get refresh {
    if (_value.refresh == null) {
      return null;
    }

    return $AccessCopyWith<$Res>(_value.refresh!, (value) {
      return _then(_value.copyWith(refresh: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TokensCopyWith<$Res> implements $TokensCopyWith<$Res> {
  factory _$$_TokensCopyWith(_$_Tokens value, $Res Function(_$_Tokens) then) =
      __$$_TokensCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Access? access, Access? refresh});

  @override
  $AccessCopyWith<$Res>? get access;
  @override
  $AccessCopyWith<$Res>? get refresh;
}

/// @nodoc
class __$$_TokensCopyWithImpl<$Res>
    extends _$TokensCopyWithImpl<$Res, _$_Tokens>
    implements _$$_TokensCopyWith<$Res> {
  __$$_TokensCopyWithImpl(_$_Tokens _value, $Res Function(_$_Tokens) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = freezed,
    Object? refresh = freezed,
  }) {
    return _then(_$_Tokens(
      access: freezed == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as Access?,
      refresh: freezed == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as Access?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tokens implements _Tokens {
  const _$_Tokens({this.access, this.refresh});

  factory _$_Tokens.fromJson(Map<String, dynamic> json) =>
      _$$_TokensFromJson(json);

  @override
  final Access? access;
  @override
  final Access? refresh;

  @override
  String toString() {
    return 'Tokens(access: $access, refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tokens &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, access, refresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokensCopyWith<_$_Tokens> get copyWith =>
      __$$_TokensCopyWithImpl<_$_Tokens>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokensToJson(
      this,
    );
  }
}

abstract class _Tokens implements Tokens {
  const factory _Tokens({final Access? access, final Access? refresh}) =
      _$_Tokens;

  factory _Tokens.fromJson(Map<String, dynamic> json) = _$_Tokens.fromJson;

  @override
  Access? get access;
  @override
  Access? get refresh;
  @override
  @JsonKey(ignore: true)
  _$$_TokensCopyWith<_$_Tokens> get copyWith =>
      throw _privateConstructorUsedError;
}
