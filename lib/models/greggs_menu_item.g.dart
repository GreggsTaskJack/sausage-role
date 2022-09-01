// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'greggs_menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GreggsMenu _$GreggsMenuFromJson(Map<String, dynamic> json) => GreggsMenu(
      items: (json['items'] as List<dynamic>)
          .map((e) => GreggsMenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GreggsMenuToJson(GreggsMenu instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

GreggsMenuItem _$GreggsMenuItemFromJson(Map<String, dynamic> json) =>
    GreggsMenuItem(
      json['articleCode'] as String,
      json['shopCode'] as String,
      DateTime.parse(json['availableFrom'] as String),
      DateTime.parse(json['availableUntil'] as String),
      (json['eatOutPrice'] as num).toDouble(),
      (json['eatInPrice'] as num).toDouble(),
      json['articleName'] as String,
      (json['dayParts'] as List<dynamic>).map((e) => e as String).toList(),
      json['internalDescription'] as String,
      json['customerDescription'] as String,
      json['imageUri'] as String,
      json['thumbnailUri'] as String,
    );

Map<String, dynamic> _$GreggsMenuItemToJson(GreggsMenuItem instance) =>
    <String, dynamic>{
      'articleCode': instance.articleCode,
      'shopCode': instance.shopCode,
      'availableFrom': instance.availableFrom.toIso8601String(),
      'availableUntil': instance.availableUntil.toIso8601String(),
      'eatOutPrice': instance.eatOutPrice,
      'eatInPrice': instance.eatInPrice,
      'articleName': instance.articleName,
      'dayParts': instance.dayParts,
      'internationalDescription': instance.internationalDescription,
      'customerDescription': instance.customerDescription,
      'imageUri': instance.imageUri,
      'thumbnailUri': instance.thumbnailUri,
    };
