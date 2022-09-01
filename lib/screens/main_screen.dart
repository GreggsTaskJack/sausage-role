import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sausage_programming_role/providers/menu_provider.dart';
import 'package:sausage_programming_role/widgets/menu_item_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Greggs", style: TextStyle(color: Theme.of(context).secondaryHeaderColor)),
      ),
      body: Container(
        color: Theme.of(context).secondaryHeaderColor,
        child: Center(
            child: ChangeNotifierProvider<MenuProvider>(
              create: (_) => MenuProvider(),
              child: Consumer<MenuProvider>(
                  builder: (context, menuProvider, _) =>
                      ListView(
                        children: menuProvider.menu?.items.map((e) => MenuItemCard(item: e)).toList() ?? [],
                      )
                  //     Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: <Widget>[
                  //     Text(
                  //       menuProvider.menu?.items.first.articleName ?? "nope",
                  //       style: Theme.of(context).textTheme.headline4,
                  //     ),
                  //   ],
                  // )
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
