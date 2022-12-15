// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Courses _$CoursesFromJson(Map<String, dynamic> json) {
  return _Courses.fromJson(json);
}

/// @nodoc
mixin _$Courses {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get purpose => throw _privateConstructorUsedError;
  String? get otherDetails => throw _privateConstructorUsedError;
  int? get defaultPrice => throw _privateConstructorUsedError;
  int? get coursePrice => throw _privateConstructorUsedError;
  String? get courseType => throw _privateConstructorUsedError;
  String? get sectionType => throw _privateConstructorUsedError;
  bool? get visible => throw _privateConstructorUsedError;
  int? get displayOrder => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  List<Topics>? get topics => throw _privateConstructorUsedError;
  List<Categories>? get categories => throw _privateConstructorUsedError;
  List<User>? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoursesCopyWith<Courses> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesCopyWith<$Res> {
  factory $CoursesCopyWith(Courses value, $Res Function(Courses) then) =
      _$CoursesCopyWithImpl<$Res, Courses>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? imageUrl,
      String? level,
      String? reason,
      String? purpose,
      String? otherDetails,
      int? defaultPrice,
      int? coursePrice,
      String? courseType,
      String? sectionType,
      bool? visible,
      int? displayOrder,
      String? createdAt,
      String? updatedAt,
      List<Topics>? topics,
      List<Categories>? categories,
      List<User>? users});
}

/// @nodoc
class _$CoursesCopyWithImpl<$Res, $Val extends Courses>
    implements $CoursesCopyWith<$Res> {
  _$CoursesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? level = freezed,
    Object? reason = freezed,
    Object? purpose = freezed,
    Object? otherDetails = freezed,
    Object? defaultPrice = freezed,
    Object? coursePrice = freezed,
    Object? courseType = freezed,
    Object? sectionType = freezed,
    Object? visible = freezed,
    Object? displayOrder = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? topics = freezed,
    Object? categories = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      otherDetails: freezed == otherDetails
          ? _value.otherDetails
          : otherDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultPrice: freezed == defaultPrice
          ? _value.defaultPrice
          : defaultPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      coursePrice: freezed == coursePrice
          ? _value.coursePrice
          : coursePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      courseType: freezed == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionType: freezed == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topics>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categories>?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoursesCopyWith<$Res> implements $CoursesCopyWith<$Res> {
  factory _$$_CoursesCopyWith(
          _$_Courses value, $Res Function(_$_Courses) then) =
      __$$_CoursesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? imageUrl,
      String? level,
      String? reason,
      String? purpose,
      String? otherDetails,
      int? defaultPrice,
      int? coursePrice,
      String? courseType,
      String? sectionType,
      bool? visible,
      int? displayOrder,
      String? createdAt,
      String? updatedAt,
      List<Topics>? topics,
      List<Categories>? categories,
      List<User>? users});
}

/// @nodoc
class __$$_CoursesCopyWithImpl<$Res>
    extends _$CoursesCopyWithImpl<$Res, _$_Courses>
    implements _$$_CoursesCopyWith<$Res> {
  __$$_CoursesCopyWithImpl(_$_Courses _value, $Res Function(_$_Courses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? level = freezed,
    Object? reason = freezed,
    Object? purpose = freezed,
    Object? otherDetails = freezed,
    Object? defaultPrice = freezed,
    Object? coursePrice = freezed,
    Object? courseType = freezed,
    Object? sectionType = freezed,
    Object? visible = freezed,
    Object? displayOrder = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? topics = freezed,
    Object? categories = freezed,
    Object? users = freezed,
  }) {
    return _then(_$_Courses(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      otherDetails: freezed == otherDetails
          ? _value.otherDetails
          : otherDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultPrice: freezed == defaultPrice
          ? _value.defaultPrice
          : defaultPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      coursePrice: freezed == coursePrice
          ? _value.coursePrice
          : coursePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      courseType: freezed == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionType: freezed == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topics>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categories>?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Courses implements _Courses {
  const _$_Courses(
      {this.id,
      this.name,
      this.description,
      this.imageUrl,
      this.level,
      this.reason,
      this.purpose,
      this.otherDetails,
      this.defaultPrice,
      this.coursePrice,
      this.courseType,
      this.sectionType,
      this.visible,
      this.displayOrder,
      this.createdAt,
      this.updatedAt,
      final List<Topics>? topics,
      final List<Categories>? categories,
      final List<User>? users})
      : _topics = topics,
        _categories = categories,
        _users = users;

  factory _$_Courses.fromJson(Map<String, dynamic> json) =>
      _$$_CoursesFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final String? level;
  @override
  final String? reason;
  @override
  final String? purpose;
  @override
  final String? otherDetails;
  @override
  final int? defaultPrice;
  @override
  final int? coursePrice;
  @override
  final String? courseType;
  @override
  final String? sectionType;
  @override
  final bool? visible;
  @override
  final int? displayOrder;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  final List<Topics>? _topics;
  @override
  List<Topics>? get topics {
    final value = _topics;
    if (value == null) return null;
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Categories>? _categories;
  @override
  List<Categories>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<User>? _users;
  @override
  List<User>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Courses(id: $id, name: $name, description: $description, imageUrl: $imageUrl, level: $level, reason: $reason, purpose: $purpose, otherDetails: $otherDetails, defaultPrice: $defaultPrice, coursePrice: $coursePrice, courseType: $courseType, sectionType: $sectionType, visible: $visible, displayOrder: $displayOrder, createdAt: $createdAt, updatedAt: $updatedAt, topics: $topics, categories: $categories, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Courses &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.otherDetails, otherDetails) ||
                other.otherDetails == otherDetails) &&
            (identical(other.defaultPrice, defaultPrice) ||
                other.defaultPrice == defaultPrice) &&
            (identical(other.coursePrice, coursePrice) ||
                other.coursePrice == coursePrice) &&
            (identical(other.courseType, courseType) ||
                other.courseType == courseType) &&
            (identical(other.sectionType, sectionType) ||
                other.sectionType == sectionType) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        description,
        imageUrl,
        level,
        reason,
        purpose,
        otherDetails,
        defaultPrice,
        coursePrice,
        courseType,
        sectionType,
        visible,
        displayOrder,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_topics),
        const DeepCollectionEquality().hash(_categories),
        const DeepCollectionEquality().hash(_users)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoursesCopyWith<_$_Courses> get copyWith =>
      __$$_CoursesCopyWithImpl<_$_Courses>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoursesToJson(
      this,
    );
  }
}

abstract class _Courses implements Courses {
  const factory _Courses(
      {final String? id,
      final String? name,
      final String? description,
      final String? imageUrl,
      final String? level,
      final String? reason,
      final String? purpose,
      final String? otherDetails,
      final int? defaultPrice,
      final int? coursePrice,
      final String? courseType,
      final String? sectionType,
      final bool? visible,
      final int? displayOrder,
      final String? createdAt,
      final String? updatedAt,
      final List<Topics>? topics,
      final List<Categories>? categories,
      final List<User>? users}) = _$_Courses;

  factory _Courses.fromJson(Map<String, dynamic> json) = _$_Courses.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get imageUrl;
  @override
  String? get level;
  @override
  String? get reason;
  @override
  String? get purpose;
  @override
  String? get otherDetails;
  @override
  int? get defaultPrice;
  @override
  int? get coursePrice;
  @override
  String? get courseType;
  @override
  String? get sectionType;
  @override
  bool? get visible;
  @override
  int? get displayOrder;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  List<Topics>? get topics;
  @override
  List<Categories>? get categories;
  @override
  List<User>? get users;
  @override
  @JsonKey(ignore: true)
  _$$_CoursesCopyWith<_$_Courses> get copyWith =>
      throw _privateConstructorUsedError;
}
