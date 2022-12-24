// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutor_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TutorResponse _$TutorResponseFromJson(Map<String, dynamic> json) {
  return _TutorResponse.fromJson(json);
}

/// @nodoc
mixin _$TutorResponse {
  Tutors? get tutors => throw _privateConstructorUsedError;
  List<FavoriteTutor>? get favoriteTutor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorResponseCopyWith<TutorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorResponseCopyWith<$Res> {
  factory $TutorResponseCopyWith(
          TutorResponse value, $Res Function(TutorResponse) then) =
      _$TutorResponseCopyWithImpl<$Res, TutorResponse>;
  @useResult
  $Res call({Tutors? tutors, List<FavoriteTutor>? favoriteTutor});

  $TutorsCopyWith<$Res>? get tutors;
}

/// @nodoc
class _$TutorResponseCopyWithImpl<$Res, $Val extends TutorResponse>
    implements $TutorResponseCopyWith<$Res> {
  _$TutorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutors = freezed,
    Object? favoriteTutor = freezed,
  }) {
    return _then(_value.copyWith(
      tutors: freezed == tutors
          ? _value.tutors
          : tutors // ignore: cast_nullable_to_non_nullable
              as Tutors?,
      favoriteTutor: freezed == favoriteTutor
          ? _value.favoriteTutor
          : favoriteTutor // ignore: cast_nullable_to_non_nullable
              as List<FavoriteTutor>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TutorsCopyWith<$Res>? get tutors {
    if (_value.tutors == null) {
      return null;
    }

    return $TutorsCopyWith<$Res>(_value.tutors!, (value) {
      return _then(_value.copyWith(tutors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TutorResponseCopyWith<$Res>
    implements $TutorResponseCopyWith<$Res> {
  factory _$$_TutorResponseCopyWith(
          _$_TutorResponse value, $Res Function(_$_TutorResponse) then) =
      __$$_TutorResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Tutors? tutors, List<FavoriteTutor>? favoriteTutor});

  @override
  $TutorsCopyWith<$Res>? get tutors;
}

/// @nodoc
class __$$_TutorResponseCopyWithImpl<$Res>
    extends _$TutorResponseCopyWithImpl<$Res, _$_TutorResponse>
    implements _$$_TutorResponseCopyWith<$Res> {
  __$$_TutorResponseCopyWithImpl(
      _$_TutorResponse _value, $Res Function(_$_TutorResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutors = freezed,
    Object? favoriteTutor = freezed,
  }) {
    return _then(_$_TutorResponse(
      tutors: freezed == tutors
          ? _value.tutors
          : tutors // ignore: cast_nullable_to_non_nullable
              as Tutors?,
      favoriteTutor: freezed == favoriteTutor
          ? _value._favoriteTutor
          : favoriteTutor // ignore: cast_nullable_to_non_nullable
              as List<FavoriteTutor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TutorResponse implements _TutorResponse {
  const _$_TutorResponse(
      {this.tutors, final List<FavoriteTutor>? favoriteTutor})
      : _favoriteTutor = favoriteTutor;

  factory _$_TutorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TutorResponseFromJson(json);

  @override
  final Tutors? tutors;
  final List<FavoriteTutor>? _favoriteTutor;
  @override
  List<FavoriteTutor>? get favoriteTutor {
    final value = _favoriteTutor;
    if (value == null) return null;
    if (_favoriteTutor is EqualUnmodifiableListView) return _favoriteTutor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TutorResponse(tutors: $tutors, favoriteTutor: $favoriteTutor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TutorResponse &&
            (identical(other.tutors, tutors) || other.tutors == tutors) &&
            const DeepCollectionEquality()
                .equals(other._favoriteTutor, _favoriteTutor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, tutors, const DeepCollectionEquality().hash(_favoriteTutor));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TutorResponseCopyWith<_$_TutorResponse> get copyWith =>
      __$$_TutorResponseCopyWithImpl<_$_TutorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorResponseToJson(
      this,
    );
  }
}

abstract class _TutorResponse implements TutorResponse {
  const factory _TutorResponse(
      {final Tutors? tutors,
      final List<FavoriteTutor>? favoriteTutor}) = _$_TutorResponse;

  factory _TutorResponse.fromJson(Map<String, dynamic> json) =
      _$_TutorResponse.fromJson;

  @override
  Tutors? get tutors;
  @override
  List<FavoriteTutor>? get favoriteTutor;
  @override
  @JsonKey(ignore: true)
  _$$_TutorResponseCopyWith<_$_TutorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
