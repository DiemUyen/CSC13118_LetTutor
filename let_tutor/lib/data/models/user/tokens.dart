import 'package:freezed_annotation/freezed_annotation.dart';
import 'access.dart';

part 'tokens.freezed.dart';
part 'tokens.g.dart';

@Freezed(fromJson: true)
class Tokens with _$Tokens {
  const factory Tokens({
    Access? access,
    Access? refresh,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) =>
      _$TokensFromJson(json);
}
