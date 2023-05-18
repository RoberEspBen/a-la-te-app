import 'package:a_la_te_app/features/example/domain/models/example.dart';
import 'package:a_la_te_app/features/example/domain/repositories/example_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class MockExampleRepository implements ExampleRepository {
  @override
  Future<Result<List<Example>, Exception>> getExamples() async {
    await Future<void>.delayed(
      const Duration(seconds: 1),
    );

    return Success(
      List<Example>.generate(
        10,
        (index) => Example(
          id: index.toString(),
          title: 'Ejemplo número ${index + 1}',
          description:
              "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
        ),
      ),
    );
  }
}
