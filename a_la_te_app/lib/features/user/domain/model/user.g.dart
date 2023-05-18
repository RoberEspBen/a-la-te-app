// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      nif: json['nif'] as String? ?? '',
      email: json['email'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? null,
      mobilePhoneNumber: json['mobilePhoneNumber'] as String? ?? '',
      level: json['level'] as String? ?? '',
      skillfullHand: json['skillfullHand'] as String? ?? '',
      wonMatches: json['wonMatches'] as int? ?? 0,
      playedMatches: json['playedMatches'] as int? ?? 0,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'nif': instance.nif,
      'email': instance.email,
      'name': instance.name,
      'description': instance.description,
      'mobilePhoneNumber': instance.mobilePhoneNumber,
      'level': instance.level,
      'skillfullHand': instance.skillfullHand,
      'wonMatches': instance.wonMatches,
      'playedMatches': instance.playedMatches,
    };
