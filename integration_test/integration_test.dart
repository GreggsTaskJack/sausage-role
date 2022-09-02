
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:sausage_programming_role/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  /// Given the limited scope and resources, this serves as a general smoke test
  /// Ideally this would use the robot pattern which also easily allows sharing
  /// between widget tests and integration tests
  /// Would be good to add some golden tests also

  testWidgets('Run through of all features', (WidgetTester tester) async {
    const app = MyApp();

    // launch the app
    await tester.pumpWidget(app);
    await tester.pumpAndSettle();

    await findOneAndTap(const ValueKey('Sausage Roll-menu-item-widget'), tester);

    await findOneAndTap(const ValueKey('add-to-cart-button'), tester);

    await findOneAndTap(const ValueKey('basket-button'), tester);

    expect(find.text('Total Price: £1.05'), findsOneWidget);
  });
}

/// This would actually go in a base robot class
Future<void> findOneAndTap(Key key, WidgetTester tester) async {
  Finder finder = find.byKey(key);
  expect(finder, findsOneWidget);

  await tester.tap(finder);
  await tester.pumpAndSettle();
}