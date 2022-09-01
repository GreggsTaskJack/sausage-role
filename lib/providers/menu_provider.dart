import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sausage_programming_role/models/greggs_menu_item.dart';

class MenuProvider extends ChangeNotifier {
  GreggsMenu? menu;

  List<GreggsMenuItem> cart = [];

  MenuProvider() {
    setup();
  }

  double get totalPrice => cart.fold(0, (previousValue, element) => previousValue + element.eatOutPrice);

  int getAmountOfItem(GreggsMenuItem item) {
    return cart.where((cartItem) => cartItem == item).length;
  }

  void setup() async {
    final String response = await rootBundle.loadString('assets/menu.json');
    final data = await json.decode(response);
    menu = GreggsMenu.fromJson(data);
    notifyListeners();
  }

  void addToCart(GreggsMenuItem item) {
    cart.add(item);
    notifyListeners();
  }

  void removeFromCart(GreggsMenuItem item) {
    if (cart.contains(item)) {
      cart.remove(item);
    }
    notifyListeners();
  }
}