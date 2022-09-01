import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sausage_programming_role/providers/menu_provider.dart';
import 'package:sausage_programming_role/screens/basket_screen.dart';
import 'package:sausage_programming_role/screens/item_screen.dart';
import 'package:sausage_programming_role/widgets/app_bar.dart';
import 'package:sausage_programming_role/widgets/menu_item_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MenuProvider>(
        builder: (context, menuProvider, _) => Scaffold(
              appBar: const BrandedAppBar(title: 'Greggs'),
              body: Center(
                  child: ListView.separated(
                      itemCount: menuProvider.menu?.items.length ?? 0,
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(thickness: 1, color: Colors.black54),
                      itemBuilder: (BuildContext context, int index) {
                        final item = menuProvider.menu!.items[index];
                        return MenuItemWidget(
                            item: item,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ItemScreen(
                                  item: item,
                                ),
                              ));
                            });
                      })),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BasketScreen(),
                  ));
                },
                tooltip: 'Increment',
                child: const Icon(Icons.shopping_cart_outlined, size: 30),
              ),
            ));
  }
}
