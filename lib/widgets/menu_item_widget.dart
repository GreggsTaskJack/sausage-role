import 'package:flutter/material.dart';
import 'package:sausage_programming_role/models/greggs_menu_item.dart';
import 'package:sausage_programming_role/utils/string_extension.dart';
import 'package:sausage_programming_role/utils/currency_formatter.dart';

class MenuItemWidget extends StatelessWidget {
  final GreggsMenuItem item;
  final VoidCallback onPressed;
  const MenuItemWidget({required this.item, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
            trailing: item.image,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.articleName,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text(
                    item.customerDescription
                        .ofMaxLength(60, withoutLineBreaks: true),
                    style:
                        const TextStyle(color: Colors.black54, fontSize: 14)),
                const SizedBox(height: 8),
                Text(CurrencyFormatter.getCurrencyString(item.eatOutPrice),
                    style:
                        const TextStyle(color: Colors.black54, fontSize: 14)),
              ],
            )),
      ),
    );
  }
}
