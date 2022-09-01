import 'package:flutter/material.dart';
import 'package:sausage_programming_role/models/greggs_menu_item.dart';

class MenuItemCard extends StatelessWidget {
  final GreggsMenuItem item;
  const MenuItemCard({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Card(
        elevation: 4,
        color: Theme.of(context).primaryColor,
        child: ListTile(leading: (item.imageUrl != null) ? CircleAvatar(
          backgroundImage: NetworkImage(item.imageUrl!), // no matter how big it is, it won't overflow
        ) : null,
          title: Text(item.articleName!, style: TextStyle(color: Theme.of(context).secondaryHeaderColor),),
          subtitle: Text(item.eatInPrice!.toString(), style: TextStyle(color: Theme.of(context).secondaryHeaderColor)),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.add, color: Theme.of(context).secondaryHeaderColor),),
        ),
      ),
    );
  }
}
