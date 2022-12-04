// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  List<String>? get roles => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  bool? get isActivated => throw _privateConstructorUsedError;
  WalletInfo? get walletInfo => throw _privateConstructorUsedError;
  List<Courses>? get courses => throw _privateConstructorUsedError;
  String? get requireNote => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  List<LearnTopics>? get learnTopics => throw _privateConstructorUsedError;
  List<LearnTopics>? get testPreparations => throw _privateConstructorUsedError;
  bool? get isPhoneActivated => throw _privateConstructorUsedError;
  int? get timezone => throw _privateConstructorUsedError;
  String? get studySchedule => throw _privateConstructorUsedError;
  bool? get canSendMessage => throw _privateConstructorUsedError;
  String? get tutorInfo => throw _privateConstructorUsedError;
  ReferralInfo? get referralInfo => throw _privateConstructorUsedError;
  String? get studentGroup => throw _privateConstructorUsedError;
  String? get studentInfo => throw _privateConstructorUsedError;
  int? get avgRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? id,
      String? email,
      String? name,
      String? avatar,
      String? country,
      String? phone,
      List<String>? roles,
      String? language,
      String? birthday,
      bool? isActivated,
      WalletInfo? walletInfo,
      List<Courses>? courses,
      String? requireNote,
      String? level,
      List<LearnTopics>? learnTopics,
      List<LearnTopics>? testPreparations,
      bool? isPhoneActivated,
      int? timezone,
      String? studySchedule,
      bool? canSendMessage,
      String? tutorInfo,
      ReferralInfo? referralInfo,
      String? studentGroup,
      String? studentInfo,
      int? avgRating});

  $WalletInfoCopyWith<$Res>? get walletInfo;
  $ReferralInfoCopyWith<$Res>? get referralInfo;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? roles = freezed,
    Object? language = freezed,
    Object? birthday = freezed,
    Object? isActivated = freezed,
    Object? walletInfo = freezed,
    Object? courses = freezed,
    Object? requireNote = freezed,
    Object? level = freezed,
    Object? learnTopics = freezed,
    Object? testPreparations = freezed,
    Object? isPhoneActivated = freezed,
    Object? timezone = freezed,
    Object? studySchedule = freezed,
    Object? canSendMessage = freezed,
    Object? tutorInfo = freezed,
    Object? referralInfo = freezed,
    Object? studentGroup = freezed,
    Object? studentInfo = freezed,
    Object? avgRating = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      isActivated: freezed == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      walletInfo: freezed == walletInfo
          ? _value.walletInfo
          : walletInfo // ignore: cast_nullable_to_non_nullable
              as WalletInfo?,
      courses: freezed == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Courses>?,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      learnTopics: freezed == learnTopics
          ? _value.learnTopics
          : learnTopics // ignore: cast_nullable_to_non_nullable
              as List<LearnTopics>?,
      testPreparations: freezed == testPreparations
          ? _value.testPreparations
          : testPreparations // ignore: cast_nullable_to_non_nullable
              as List<LearnTopics>?,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      canSendMessage: freezed == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      tutorInfo: freezed == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      referralInfo: freezed == referralInfo
          ? _value.referralInfo
          : referralInfo // ignore: cast_nullable_to_non_nullable
              as ReferralInfo?,
      studentGroup: freezed == studentGroup
          ? _value.studentGroup
          : studentGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      studentInfo: freezed == studentInfo
          ? _value.studentInfo
          : studentInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletInfoCopyWith<$Res>? get walletInfo {
    if (_value.walletInfo == null) {
      return null;
    }

    return $WalletInfoCopyWith<$Res>(_value.walletInfo!, (value) {
      return _then(_value.copyWith(walletInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferralInfoCopyWith<$Res>? get referralInfo {
    if (_value.referralInfo == null) {
      return null;
    }

    return $ReferralInfoCopyWith<$Res>(_value.referralInfo!, (value) {
      return _then(_value.copyWith(referralInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? email,
      String? name,
      String? avatar,
      String? country,
      String? phone,
      List<String>? roles,
      String? language,
      String? birthday,
      bool? isActivated,
      WalletInfo? walletInfo,
      List<Courses>? courses,
      String? requireNote,
      String? level,
      List<LearnTopics>? learnTopics,
      List<LearnTopics>? testPreparations,
      bool? isPhoneActivated,
      int? timezone,
      String? studySchedule,
      bool? canSendMessage,
      String? tutorInfo,
      ReferralInfo? referralInfo,
      String? studentGroup,
      String? studentInfo,
      int? avgRating});

  @override
  $WalletInfoCopyWith<$Res>? get walletInfo;
  @override
  $ReferralInfoCopyWith<$Res>? get referralInfo;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? roles = freezed,
    Object? language = freezed,
    Object? birthday = freezed,
    Object? isActivated = freezed,
    Object? walletInfo = freezed,
    Object? courses = freezed,
    Object? requireNote = freezed,
    Object? level = freezed,
    Object? learnTopics = freezed,
    Object? testPreparations = freezed,
    Object? isPhoneActivated = freezed,
    Object? timezone = freezed,
    Object? studySchedule = freezed,
    Object? canSendMessage = freezed,
    Object? tutorInfo = freezed,
    Object? referralInfo = freezed,
    Object? studentGroup = freezed,
    Object? studentInfo = freezed,
    Object? avgRating = freezed,
  }) {
    return _then(_$_User(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      isActivated: freezed == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      walletInfo: freezed == walletInfo
          ? _value.walletInfo
          : walletInfo // ignore: cast_nullable_to_non_nullable
              as WalletInfo?,
      courses: freezed == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Courses>?,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      learnTopics: freezed == learnTopics
          ? _value._learnTopics
          : learnTopics // ignore: cast_nullable_to_non_nullable
              as List<LearnTopics>?,
      testPreparations: freezed == testPreparations
          ? _value._testPreparations
          : testPreparations // ignore: cast_nullable_to_non_nullable
              as List<LearnTopics>?,
      isPhoneActivated: freezed == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      canSendMessage: freezed == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      tutorInfo: freezed == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      referralInfo: freezed == referralInfo
          ? _value.referralInfo
          : referralInfo // ignore: cast_nullable_to_non_nullable
              as ReferralInfo?,
      studentGroup: freezed == studentGroup
          ? _value.studentGroup
          : studentGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      studentInfo: freezed == studentInfo
          ? _value.studentInfo
          : studentInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.id,
      this.email,
      this.name,
      this.avatar,
      this.country,
      this.phone,
      final List<String>? roles,
      this.language,
      this.birthday,
      this.isActivated,
      this.walletInfo,
      final List<Courses>? courses,
      this.requireNote,
      this.level,
      final List<LearnTopics>? learnTopics,
      final List<LearnTopics>? testPreparations,
      this.isPhoneActivated,
      this.timezone,
      this.studySchedule,
      this.canSendMessage,
      this.tutorInfo,
      this.referralInfo,
      this.studentGroup,
      this.studentInfo,
      this.avgRating})
      : _roles = roles,
        _courses = courses,
        _learnTopics = learnTopics,
        _testPreparations = testPreparations;

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? id;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? avatar;
  @override
  final String? country;
  @override
  final String? phone;
  final List<String>? _roles;
  @override
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? language;
  @override
  final String? birthday;
  @override
  final bool? isActivated;
  @override
  final WalletInfo? walletInfo;
  final List<Courses>? _courses;
  @override
  List<Courses>? get courses {
    final value = _courses;
    if (value == null) return null;
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? requireNote;
  @override
  final String? level;
  final List<LearnTopics>? _learnTopics;
  @override
  List<LearnTopics>? get learnTopics {
    final value = _learnTopics;
    if (value == null) return null;
    if (_learnTopics is EqualUnmodifiableListView) return _learnTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LearnTopics>? _testPreparations;
  @override
  List<LearnTopics>? get testPreparations {
    final value = _testPreparations;
    if (value == null) return null;
    if (_testPreparations is EqualUnmodifiableListView)
      return _testPreparations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isPhoneActivated;
  @override
  final int? timezone;
  @override
  final String? studySchedule;
  @override
  final bool? canSendMessage;
  @override
  final String? tutorInfo;
  @override
  final ReferralInfo? referralInfo;
  @override
  final String? studentGroup;
  @override
  final String? studentInfo;
  @override
  final int? avgRating;

  @override
  String toString() {
    return 'User(id: $id, email: $email, name: $name, avatar: $avatar, country: $country, phone: $phone, roles: $roles, language: $language, birthday: $birthday, isActivated: $isActivated, walletInfo: $walletInfo, courses: $courses, requireNote: $requireNote, level: $level, learnTopics: $learnTopics, testPreparations: $testPreparations, isPhoneActivated: $isPhoneActivated, timezone: $timezone, studySchedule: $studySchedule, canSendMessage: $canSendMessage, tutorInfo: $tutorInfo, referralInfo: $referralInfo, studentGroup: $studentGroup, studentInfo: $studentInfo, avgRating: $avgRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            (identical(other.walletInfo, walletInfo) ||
                other.walletInfo == walletInfo) &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            (identical(other.requireNote, requireNote) ||
                other.requireNote == requireNote) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality()
                .equals(other._learnTopics, _learnTopics) &&
            const DeepCollectionEquality()
                .equals(other._testPreparations, _testPreparations) &&
            (identical(other.isPhoneActivated, isPhoneActivated) ||
                other.isPhoneActivated == isPhoneActivated) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.studySchedule, studySchedule) ||
                other.studySchedule == studySchedule) &&
            (identical(other.canSendMessage, canSendMessage) ||
                other.canSendMessage == canSendMessage) &&
            (identical(other.tutorInfo, tutorInfo) ||
                other.tutorInfo == tutorInfo) &&
            (identical(other.referralInfo, referralInfo) ||
                other.referralInfo == referralInfo) &&
            (identical(other.studentGroup, studentGroup) ||
                other.studentGroup == studentGroup) &&
            (identical(other.studentInfo, studentInfo) ||
                other.studentInfo == studentInfo) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        email,
        name,
        avatar,
        country,
        phone,
        const DeepCollectionEquality().hash(_roles),
        language,
        birthday,
        isActivated,
        walletInfo,
        const DeepCollectionEquality().hash(_courses),
        requireNote,
        level,
        const DeepCollectionEquality().hash(_learnTopics),
        const DeepCollectionEquality().hash(_testPreparations),
        isPhoneActivated,
        timezone,
        studySchedule,
        canSendMessage,
        tutorInfo,
        referralInfo,
        studentGroup,
        studentInfo,
        avgRating
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String? id,
      final String? email,
      final String? name,
      final String? avatar,
      final String? country,
      final String? phone,
      final List<String>? roles,
      final String? language,
      final String? birthday,
      final bool? isActivated,
      final WalletInfo? walletInfo,
      final List<Courses>? courses,
      final String? requireNote,
      final String? level,
      final List<LearnTopics>? learnTopics,
      final List<LearnTopics>? testPreparations,
      final bool? isPhoneActivated,
      final int? timezone,
      final String? studySchedule,
      final bool? canSendMessage,
      final String? tutorInfo,
      final ReferralInfo? referralInfo,
      final String? studentGroup,
      final String? studentInfo,
      final int? avgRating}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get id;
  @override
  String? get email;
  @override
  String? get name;
  @override
  String? get avatar;
  @override
  String? get country;
  @override
  String? get phone;
  @override
  List<String>? get roles;
  @override
  String? get language;
  @override
  String? get birthday;
  @override
  bool? get isActivated;
  @override
  WalletInfo? get walletInfo;
  @override
  List<Courses>? get courses;
  @override
  String? get requireNote;
  @override
  String? get level;
  @override
  List<LearnTopics>? get learnTopics;
  @override
  List<LearnTopics>? get testPreparations;
  @override
  bool? get isPhoneActivated;
  @override
  int? get timezone;
  @override
  String? get studySchedule;
  @override
  bool? get canSendMessage;
  @override
  String? get tutorInfo;
  @override
  ReferralInfo? get referralInfo;
  @override
  String? get studentGroup;
  @override
  String? get studentInfo;
  @override
  int? get avgRating;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
