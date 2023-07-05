// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Club _$$_ClubFromJson(Map<String, dynamic> json) => _$_Club(
      id: json['id'] as String,
      clubName: json['clubName'] as String? ?? '',
      clubAddress: json['clubAddress'] as String? ?? '',
      clubImage: json['clubImage'] as String? ?? null,
    );

Map<String, dynamic> _$$_ClubToJson(_$_Club instance) => <String, dynamic>{
      'id': instance.id,
      'clubName': instance.clubName,
      'clubAddress': instance.clubAddress,
      'clubImage': instance.clubImage,
    };
