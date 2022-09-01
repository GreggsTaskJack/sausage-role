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
      articleCode: json['articleCode'] as String?,
      shopCode: json['shopCode'] as String?,
      availableFrom: json['availableFrom'] == null
          ? null
          : DateTime.parse(json['availableFrom'] as String),
      availableUntil: json['availableUntil'] == null
          ? null
          : DateTime.parse(json['availableUntil'] as String),
      eatOutPrice: (json['eatOutPrice'] as num?)?.toDouble(),
      eatInPrice: (json['eatInPrice'] as num?)?.toDouble(),
      articleName: json['articleName'] as String?,
      dayParts: (json['dayParts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      internationalDescription: json['internationalDescription'] as String?,
      customerDescription: json['customerDescription'] as String?,
      imageUrl: json['imageUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$GreggsMenuItemToJson(GreggsMenuItem instance) =>
    <String, dynamic>{
      'articleCode': instance.articleCode,
      'shopCode': instance.shopCode,
      'availableFrom': instance.availableFrom?.toIso8601String(),
      'availableUntil': instance.availableUntil?.toIso8601String(),
      'eatOutPrice': instance.eatOutPrice,
      'eatInPrice': instance.eatInPrice,
      'articleName': instance.articleName,
      'dayParts': instance.dayParts,
      'internationalDescription': instance.internationalDescription,
      'customerDescription': instance.customerDescription,
      'imageUrl': instance.imageUrl,
      'thumbnailUrl': instance.thumbnailUrl,
    };
