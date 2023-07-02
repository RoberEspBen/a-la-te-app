import 'package:a_la_te_app/features/app/app.dart';
import 'package:a_la_te_app/features/home/presentation/screens/home_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(HomeScreen), findsOneWidget);
    });
  });
}
