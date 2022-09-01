import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sausage_programming_role/models/greggs_menu_item.dart';
import 'package:sausage_programming_role/providers/menu_provider.dart';
import 'package:sausage_programming_role/widgets/menu_item_widget.dart';

class CartItemWidget extends StatelessWidget {
  final GreggsMenuItem item;
  const CartItemWidget({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MenuProvider>(
        builder: (context, menuProvider, _) =>
      Column(
        children: [
          MenuItemWidget(item: item, onPressed: () {}),
          ElevatedButton(onPressed: () => menuProvider.removeFromCart(item), child: const Text('Remove from cart'))
        ],
      )
    );
  }
}
