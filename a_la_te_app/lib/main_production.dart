import 'package:a_la_te_app/bootstrap.dart';
import 'package:a_la_te_app/core/di/service_locator.dart';
import 'package:a_la_te_app/features/app/app.dart';
import 'package:intl/intl.dart';

void main() async {
  await serviceLocatorSetUp();
  Intl.defaultLocale = 'es_ES';
  await bootstrap(() => const App());
}
