import 'package:a_la_te_app/core/network/endpoints.dart';
import 'package:a_la_te_app/core/network/network_service.dart';
import 'package:a_la_te_app/features/club/domain/model/club.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/match/domain/models/match_set/match_set.dart';
import 'package:a_la_te_app/features/match/domain/repository/match_repository.dart';
import 'package:a_la_te_app/features/player/domain/model/player.dart';
import 'package:a_la_te_app/features/user/domain/model/user.dart';
import 'package:flutter/material.dart';
import 'package:multiple_result/multiple_result.dart';

class ApiMatchRepository extends MatchRepository {
  ApiMatchRepository({required this.networkService});
  final NetworkService networkService;

  @override
  Future<Result<List<MatchModel>, Exception>> getMatches() async {
    try {
      // ignore: avoid_dynamic_calls
      final response = await networkService.get(Endpoints.matches);

      final result = <MatchModel>[];

      // ignore: avoid_dynamic_calls
      for (final element in response.data['data'] as List) {
        result.add(MatchModel.fromJson(element as Map<String, Object?>));
      }

      return Success(result);
    } catch (e) {
      return Error(Exception(e));
    }
  }

  @override
  Future<Result<List<MatchModel>, Exception>> getMatchesByUserId({
    required int id,
  }) async {
    try {
      // ignore: avoid_dynamic_calls
      final response = await networkService.get(
        Endpoints.matchesByUserId,
        queryParameters: {
          'userId': id,
        },
      );

      final result = <MatchModel>[];

      // ignore: avoid_dynamic_calls
      for (final element in response.data['data'] as List) {
        result.add(MatchModel.fromJson(element as Map<String, Object?>));
      }

      return Success(result);
    } catch (e) {
      return Error(Exception(e));
    }
  }

  @override
  Future<Result<List<MatchModel>, Exception>> getMatchesByUserIdAndMatchStatus({
    required int id,
    required MatchStatus matchStatus,
  }) async {
    try {
      // ignore: avoid_dynamic_calls
      final response = await networkService.get(
        Endpoints.matchesByUserId,
        queryParameters: {
          'userId': id,
          'matchStatus': matchStatus,
        },
      );
      final result = <MatchModel>[];

      // ignore: avoid_dynamic_calls
      for (final element in response.data['data'] as List) {
        result.add(MatchModel.fromJson(element as Map<String, Object?>));
      }

      return Success(result);
    } catch (e) {
      return Error(Exception(e));
    }
  }

  @override
  Future<Result<MatchModel, Exception>> createMatch({
    required Club club,
    required DateTime matchDate,
    required TimeOfDay initialTime,
    required TimeOfDay finalTime,
    required User user,
  }) async {
    try {
      // ignore: avoid_dynamic_calls
      final response = await networkService.post(
        Endpoints.matchesByUserId,
        queryParameters: {
          'clubName': club,
          'matchDate': matchDate,
          'initialTime': initialTime,
          'finalTime': finalTime,
        },
      );

      return const Success(MatchModel(id: '0'));
    } catch (e) {
      return Error(Exception(e));
    }
  }

  @override
  Future<Result<MatchModel, Exception>> setSecondPlayer({
    required MatchModel match,
    required Player player,
  }) async {
    try {
      final response = await networkService.post(
        Endpoints.setSecondPlayer,
        //TODO: set queryParameters
      );
      return Success(
        match.copyWith(
          secondPlayerId: player.id,
          secondPlayerLevel: int.parse(player.level),
          secondPlayerName: player.name,
          secondPlayerPhoto: player.playerPhoto,
        ),
      );
    } catch (e) {
      return Error(Exception(e));
    }
  }

  @override
  Future<Result<MatchModel, Exception>> setMatchResult({
    required MatchModel match,
    required List<MatchSet> matchResult,
    required bool isPlayer1Winner,
  }) async {
    try {
      final response = await networkService.post(
        Endpoints.setMatchResult,
        //TODO: set queryParameters
      );
      return Success(
        match.copyWith(
          matchResult: matchResult,
          matchStatus: MatchStatus.matchPlayed,
          winningPlayerId:
              isPlayer1Winner ? match.firstPlayerId : match.secondPlayerId,
        ),
      );
    } catch (e) {
      return Error(Exception(e));
    }
  }
}
