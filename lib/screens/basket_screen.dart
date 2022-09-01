import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sausage_programming_role/providers/menu_provider.dart';
import 'package:sausage_programming_role/widgets/app_bar.dart';
import 'package:sausage_programming_role/utils/currency_formatter.dart';
import 'package:sausage_programming_role/widgets/cart_item_widget.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MenuProvider>(
            builder: (context, menuProvider, _) => Scaffold(
              appBar: const BrandedAppBar(title: 'Cart'),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Total Price: ${CurrencyFormatter.getCurrencyString(menuProvider.totalPrice)}', style: TextStyle(fontSize: 30, color: Theme.of(context).primaryColor),),
                      ),
                      ...menuProvider.cart.map((e) => CartItemWidget(item: e))
                    ],
                  ),
                ),
              )
            )
    );
  }
}
