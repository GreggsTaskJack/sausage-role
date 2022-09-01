import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sausage_programming_role/models/greggs_menu_item.dart';

class MenuProvider extends ChangeNotifier {
  GreggsMenu? menu;

  MenuProvider() {
    setup();
  }

  void setup() async {
    final String response = await rootBundle.loadString('assets/menu.json');
    final data = await json.decode(response);
    menu = GreggsMenu.fromJson(data);
    notifyListeners();
    // _gamesStorage = await Hive.openBox<Game>('games');
    // _expectedROIStorage = await Hive.openBox<double>('expected-roi');
    // _monthlyBuyInTargetStorage = await Hive.openBox<Money>('monthly-buy-in-target');
    // refreshModel();
  }
}