import 'package:a_la_te_app/bootstrap.dart';
import 'package:a_la_te_app/core/di/service_locator.dart';
import 'package:a_la_te_app/features/app/app.dart';

void main() async {
  await serviceLocatorSetUp();
  await bootstrap(() => const App());
}
