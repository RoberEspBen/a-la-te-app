import 'package:a_la_te_app/features/player/domain/model/player.dart';
import 'package:multiple_result/multiple_result.dart';

// ignore: one_member_abstracts
abstract class PlayerRepository {
  Future<Result<Player, Exception>> getPlayerById({required int id});
}
