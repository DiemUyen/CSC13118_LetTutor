import 'package:freezed_annotation/freezed_annotation.dart';

part 'access.freezed.dart';
part 'access.g.dart';

@Freezed(fromJson: true)
class Access with _$Access {
  const factory Access({
    String? token,
    String? expires,
  }) = _Access;

  factory Access.fromJson(Map<String, dynamic> json) =>
      _$AccessFromJson(json);
}
