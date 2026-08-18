import 'package:flutter_test/flutter_test.dart';

import 'package:navigation/src/app.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    expect(find.text('Home Screen'), findsOneWidget);
    expect(find.text('First Screen'), findsOneWidget);
  });
}
