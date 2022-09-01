import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sausage_programming_role/models/greggs_menu_item.dart';
import 'package:sausage_programming_role/providers/menu_provider.dart';
import 'package:sausage_programming_role/widgets/app_bar.dart';

class ItemScreen extends StatelessWidget {
  final GreggsMenuItem item;
  const ItemScreen({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MenuProvider>(
        builder: (context, menuProvider, _) => Scaffold(
              appBar: BrandedAppBar(title: item.articleName),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      item.image!,
                      Text(item.customerDescription),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("Back")),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () {
                                    menuProvider.addToCart(item);
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Add to cart")))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
