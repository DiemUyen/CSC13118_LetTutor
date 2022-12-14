// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRequest _$UserRequestFromJson(Map<String, dynamic> json) {
  return _UserRequest.fromJson(json);
}

/// @nodoc
mixin _$UserRequest {
  String? get avatar => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get studySchedule => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRequestCopyWith<UserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestCopyWith<$Res> {
  factory $UserRequestCopyWith(
          UserRequest value, $Res Function(UserRequest) then) =
      _$UserRequestCopyWithImpl<$Res, UserRequest>;
  @useResult
  $Res call(
      {String? avatar,
      String? name,
      String? country,
      String? phone,
      String? birthday,
      String? level,
      String? studySchedule});
}

/// @nodoc
class _$UserRequestCopyWithImpl<$Res, $Val extends UserRequest>
    implements $UserRequestCopyWith<$Res> {
  _$UserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? birthday = freezed,
    Object? level = freezed,
    Object? studySchedule = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserRequestCopyWith<$Res>
    implements $UserRequestCopyWith<$Res> {
  factory _$$_UserRequestCopyWith(
          _$_UserRequest value, $Res Function(_$_UserRequest) then) =
      __$$_UserRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? avatar,
      String? name,
      String? country,
      String? phone,
      String? birthday,
      String? level,
      String? studySchedule});
}

/// @nodoc
class __$$_UserRequestCopyWithImpl<$Res>
    extends _$UserRequestCopyWithImpl<$Res, _$_UserRequest>
    implements _$$_UserRequestCopyWith<$Res> {
  __$$_UserRequestCopyWithImpl(
      _$_UserRequest _value, $Res Function(_$_UserRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? birthday = freezed,
    Object? level = freezed,
    Object? studySchedule = freezed,
  }) {
    return _then(_$_UserRequest(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRequest implements _UserRequest {
  const _$_UserRequest(
      {this.avatar,
      this.name,
      this.country,
      this.phone,
      this.birthday,
      this.level,
      this.studySchedule});

  factory _$_UserRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UserRequestFromJson(json);

  @override
  final String? avatar;
  @override
  final String? name;
  @override
  final String? country;
  @override
  final String? phone;
  @override
  final String? birthday;
  @override
  final String? level;
  @override
  final String? studySchedule;

  @override
  String toString() {
    return 'UserRequest(avatar: $avatar, name: $name, country: $country, phone: $phone, birthday: $birthday, level: $level, studySchedule: $studySchedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRequest &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.studySchedule, studySchedule) ||
                other.studySchedule == studySchedule));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avatar, name, country, phone,
      birthday, level, studySchedule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRequestCopyWith<_$_UserRequest> get copyWith =>
      __$$_UserRequestCopyWithImpl<_$_UserRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRequestToJson(
      this,
    );
  }
}

abstract class _UserRequest implements UserRequest {
  const factory _UserRequest(
      {final String? avatar,
      final String? name,
      final String? country,
      final String? phone,
      final String? birthday,
      final String? level,
      final String? studySchedule}) = _$_UserRequest;

  factory _UserRequest.fromJson(Map<String, dynamic> json) =
      _$_UserRequest.fromJson;

  @override
  String? get avatar;
  @override
  String? get name;
  @override
  String? get country;
  @override
  String? get phone;
  @override
  String? get birthday;
  @override
  String? get level;
  @override
  String? get studySchedule;
  @override
  @JsonKey(ignore: true)
  _$$_UserRequestCopyWith<_$_UserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
