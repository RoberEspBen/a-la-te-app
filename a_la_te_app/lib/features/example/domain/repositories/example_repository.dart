import 'package:a_la_te_app/features/example/domain/models/example.dart';
import 'package:multiple_result/multiple_result.dart';

// ignore: one_member_abstracts
abstract class ExampleRepository{

  Future<Result<List<Example>, Exception>> getExamples();
}
