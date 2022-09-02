import 'package:flutter_test/flutter_test.dart';
import 'package:sausage_programming_role/models/greggs_menu_item.dart';
import 'package:sausage_programming_role/providers/menu_provider.dart';

void main() {
  late MenuProvider menuProvider;
  const sausageRollPrice = 1.05;
  final sausageRoll = GreggsMenuItem('articleCode', 'shopCode', DateTime(0), DateTime(2080), sausageRollPrice, 0, 'Sausage Roll', [], 'A sausage roll', 'customerDescription', 'imageUri', 'thumbnailUri');

  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  setUp(() async {
    menuProvider = MenuProvider();
  });

  test('Should show correct total price', () {
    menuProvider.addToCart(sausageRoll);
    menuProvider.addToCart(sausageRoll);

    expect(menuProvider.totalPrice, sausageRollPrice * 2);
  });

  test('Should show correct number of items in basket', () {
    menuProvider.addToCart(sausageRoll);
    menuProvider.addToCart(sausageRoll);

    expect(menuProvider.cart.length, 2);
  });
}