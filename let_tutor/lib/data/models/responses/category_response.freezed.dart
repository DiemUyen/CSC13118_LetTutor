// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) {
  return _CategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get languages => throw _privateConstructorUsedError;
  List<Category>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryResponseCopyWith<CategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseCopyWith<$Res> {
  factory $CategoryResponseCopyWith(
          CategoryResponse value, $Res Function(CategoryResponse) then) =
      _$CategoryResponseCopyWithImpl<$Res, CategoryResponse>;
  @useResult
  $Res call({String? id, String? languages, List<Category>? categories});
}

/// @nodoc
class _$CategoryResponseCopyWithImpl<$Res, $Val extends CategoryResponse>
    implements $CategoryResponseCopyWith<$Res> {
  _$CategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? languages = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryResponseCopyWith<$Res>
    implements $CategoryResponseCopyWith<$Res> {
  factory _$$_CategoryResponseCopyWith(
          _$_CategoryResponse value, $Res Function(_$_CategoryResponse) then) =
      __$$_CategoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? languages, List<Category>? categories});
}

/// @nodoc
class __$$_CategoryResponseCopyWithImpl<$Res>
    extends _$CategoryResponseCopyWithImpl<$Res, _$_CategoryResponse>
    implements _$$_CategoryResponseCopyWith<$Res> {
  __$$_CategoryResponseCopyWithImpl(
      _$_CategoryResponse _value, $Res Function(_$_CategoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? languages = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$_CategoryResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryResponse implements _CategoryResponse {
  const _$_CategoryResponse(
      {this.id, this.languages, final List<Category>? categories})
      : _categories = categories;

  factory _$_CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryResponseFromJson(json);

  @override
  final String? id;
  @override
  final String? languages;
  final List<Category>? _categories;
  @override
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryResponse(id: $id, languages: $languages, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.languages, languages) ||
                other.languages == languages) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, languages,
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryResponseCopyWith<_$_CategoryResponse> get copyWith =>
      __$$_CategoryResponseCopyWithImpl<_$_CategoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryResponseToJson(
      this,
    );
  }
}

abstract class _CategoryResponse implements CategoryResponse {
  const factory _CategoryResponse(
      {final String? id,
      final String? languages,
      final List<Category>? categories}) = _$_CategoryResponse;

  factory _CategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_CategoryResponse.fromJson;

  @override
  String? get id;
  @override
  String? get languages;
  @override
  List<Category>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryResponseCopyWith<_$_CategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
