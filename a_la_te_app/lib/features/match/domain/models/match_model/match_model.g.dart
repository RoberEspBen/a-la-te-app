// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MatchModel _$$_MatchModelFromJson(Map<String, dynamic> json) =>
    _$_MatchModel(
      id: json['id'] as String,
      matchStatus:
          $enumDecodeNullable(_$MatchStatusEnumMap, json['matchStatus']) ??
              MatchStatus.matchCreated,
      firstPlayerId: json['firstPlayerId'] as int? ?? 0,
      firstPlayerName: json['firstPlayerName'] as String? ?? '',
      firstPlayerLevel: json['firstPlayerLevel'] as int? ?? 0,
      firstPlayerPhoto: json['firstPlayerPhoto'] as String? ?? null,
      secondPlayerId: json['secondPlayerId'] as int? ?? null,
      secondPlayerName: json['secondPlayerName'] as String? ?? null,
      secondPlayerLevel: json['secondPlayerLevel'] as int? ?? null,
      secondPlayerPhoto: json['secondPlayerPhoto'] as String? ?? null,
      club: json['club'] == null
          ? null
          : Club.fromJson(json['club'] as Map<String, dynamic>),
      matchDate: json['matchDate'] == null
          ? null
          : DateTime.parse(json['matchDate'] as String),
      initialHour: json['initialHour'] as int? ?? 0,
      finalHour: json['finalHour'] as int? ?? 0,
      matchResult: (json['matchResult'] as List<dynamic>?)
              ?.map((e) => MatchSet.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      winningPlayerId: json['winningPlayerId'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MatchModelToJson(_$_MatchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'matchStatus': _$MatchStatusEnumMap[instance.matchStatus]!,
      'firstPlayerId': instance.firstPlayerId,
      'firstPlayerName': instance.firstPlayerName,
      'firstPlayerLevel': instance.firstPlayerLevel,
      'firstPlayerPhoto': instance.firstPlayerPhoto,
      'secondPlayerId': instance.secondPlayerId,
      'secondPlayerName': instance.secondPlayerName,
      'secondPlayerLevel': instance.secondPlayerLevel,
      'secondPlayerPhoto': instance.secondPlayerPhoto,
      'club': instance.club,
      'matchDate': instance.matchDate?.toIso8601String(),
      'initialHour': instance.initialHour,
      'finalHour': instance.finalHour,
      'matchResult': instance.matchResult,
      'winningPlayerId': instance.winningPlayerId,
    };

const _$MatchStatusEnumMap = {
  MatchStatus.matchCreated: 'matchCreated',
  MatchStatus.scheduledMatch: 'scheduledMatch',
  MatchStatus.matchPlayed: 'matchPlayed',
};
