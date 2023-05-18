import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    @Default('') String nif,
    @Default('') String email,
    @Default('') String name,
    @Default(null) String? description,
    @Default('') String mobilePhoneNumber,
    @Default('') String level,
    @Default('') String skillfullHand,
    @Default(0) int wonMatches,
    @Default(0) int playedMatches,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
