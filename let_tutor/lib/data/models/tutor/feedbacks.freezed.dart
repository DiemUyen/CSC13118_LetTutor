// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedbacks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Feedbacks _$FeedbacksFromJson(Map<String, dynamic> json) {
  return _Feedbacks.fromJson(json);
}

/// @nodoc
mixin _$Feedbacks {
  String? get id => throw _privateConstructorUsedError;
  String? get bookingId => throw _privateConstructorUsedError;
  String? get firstId => throw _privateConstructorUsedError;
  String? get secondId => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  FirstInfo? get firstInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbacksCopyWith<Feedbacks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbacksCopyWith<$Res> {
  factory $FeedbacksCopyWith(Feedbacks value, $Res Function(Feedbacks) then) =
      _$FeedbacksCopyWithImpl<$Res, Feedbacks>;
  @useResult
  $Res call(
      {String? id,
      String? bookingId,
      String? firstId,
      String? secondId,
      int? rating,
      String? content,
      String? createdAt,
      String? updatedAt,
      FirstInfo? firstInfo});

  $FirstInfoCopyWith<$Res>? get firstInfo;
}

/// @nodoc
class _$FeedbacksCopyWithImpl<$Res, $Val extends Feedbacks>
    implements $FeedbacksCopyWith<$Res> {
  _$FeedbacksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookingId = freezed,
    Object? firstId = freezed,
    Object? secondId = freezed,
    Object? rating = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? firstInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstId: freezed == firstId
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String?,
      secondId: freezed == secondId
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      firstInfo: freezed == firstInfo
          ? _value.firstInfo
          : firstInfo // ignore: cast_nullable_to_non_nullable
              as FirstInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FirstInfoCopyWith<$Res>? get firstInfo {
    if (_value.firstInfo == null) {
      return null;
    }

    return $FirstInfoCopyWith<$Res>(_value.firstInfo!, (value) {
      return _then(_value.copyWith(firstInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FeedbacksCopyWith<$Res> implements $FeedbacksCopyWith<$Res> {
  factory _$$_FeedbacksCopyWith(
          _$_Feedbacks value, $Res Function(_$_Feedbacks) then) =
      __$$_FeedbacksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? bookingId,
      String? firstId,
      String? secondId,
      int? rating,
      String? content,
      String? createdAt,
      String? updatedAt,
      FirstInfo? firstInfo});

  @override
  $FirstInfoCopyWith<$Res>? get firstInfo;
}

/// @nodoc
class __$$_FeedbacksCopyWithImpl<$Res>
    extends _$FeedbacksCopyWithImpl<$Res, _$_Feedbacks>
    implements _$$_FeedbacksCopyWith<$Res> {
  __$$_FeedbacksCopyWithImpl(
      _$_Feedbacks _value, $Res Function(_$_Feedbacks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookingId = freezed,
    Object? firstId = freezed,
    Object? secondId = freezed,
    Object? rating = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? firstInfo = freezed,
  }) {
    return _then(_$_Feedbacks(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstId: freezed == firstId
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String?,
      secondId: freezed == secondId
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      firstInfo: freezed == firstInfo
          ? _value.firstInfo
          : firstInfo // ignore: cast_nullable_to_non_nullable
              as FirstInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Feedbacks implements _Feedbacks {
  const _$_Feedbacks(
      {this.id,
      this.bookingId,
      this.firstId,
      this.secondId,
      this.rating,
      this.content,
      this.createdAt,
      this.updatedAt,
      this.firstInfo});

  factory _$_Feedbacks.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbacksFromJson(json);

  @override
  final String? id;
  @override
  final String? bookingId;
  @override
  final String? firstId;
  @override
  final String? secondId;
  @override
  final int? rating;
  @override
  final String? content;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final FirstInfo? firstInfo;

  @override
  String toString() {
    return 'Feedbacks(id: $id, bookingId: $bookingId, firstId: $firstId, secondId: $secondId, rating: $rating, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, firstInfo: $firstInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feedbacks &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.firstId, firstId) || other.firstId == firstId) &&
            (identical(other.secondId, secondId) ||
                other.secondId == secondId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.firstInfo, firstInfo) ||
                other.firstInfo == firstInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, bookingId, firstId, secondId,
      rating, content, createdAt, updatedAt, firstInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedbacksCopyWith<_$_Feedbacks> get copyWith =>
      __$$_FeedbacksCopyWithImpl<_$_Feedbacks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbacksToJson(
      this,
    );
  }
}

abstract class _Feedbacks implements Feedbacks {
  const factory _Feedbacks(
      {final String? id,
      final String? bookingId,
      final String? firstId,
      final String? secondId,
      final int? rating,
      final String? content,
      final String? createdAt,
      final String? updatedAt,
      final FirstInfo? firstInfo}) = _$_Feedbacks;

  factory _Feedbacks.fromJson(Map<String, dynamic> json) =
      _$_Feedbacks.fromJson;

  @override
  String? get id;
  @override
  String? get bookingId;
  @override
  String? get firstId;
  @override
  String? get secondId;
  @override
  int? get rating;
  @override
  String? get content;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  FirstInfo? get firstInfo;
  @override
  @JsonKey(ignore: true)
  _$$_FeedbacksCopyWith<_$_Feedbacks> get copyWith =>
      throw _privateConstructorUsedError;
}
