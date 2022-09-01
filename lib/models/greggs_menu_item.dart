import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'greggs_menu_item.g.dart';

@JsonSerializable()
class GreggsMenu {
  final List<GreggsMenuItem> items;

  factory GreggsMenu.fromJson(Map<String, dynamic> json) =>
      _$GreggsMenuFromJson(json);

  GreggsMenu(
      {required this.items});

  Map<String, dynamic> toJson() => _$GreggsMenuToJson(this);
}

@JsonSerializable()
class GreggsMenuItem {
  final String articleCode;
  final String shopCode;
  final DateTime availableFrom;
  final DateTime availableUntil;
  final double eatOutPrice;
  final double eatInPrice;
  final String articleName;
  final List<String> dayParts;
  final String internationalDescription;
  final String customerDescription;
  final String imageUri;
  final String thumbnailUri;

  factory GreggsMenuItem.fromJson(Map<String, dynamic> json) =>
      _$GreggsMenuItemFromJson(json);

  GreggsMenuItem(
      this.articleCode,
      this.shopCode,
      this.availableFrom,
      this.availableUntil,
      this.eatOutPrice,
      this.eatInPrice,
      this.articleName,
      this.dayParts,
      this.internationalDescription,
      this.customerDescription,
      this.imageUri,
      this.thumbnailUri);

  Map<String, dynamic> toJson() => _$GreggsMenuItemToJson(this);

  Image? get image => Image.network(imageUri);
}
