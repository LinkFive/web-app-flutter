// generated with https://app.quicktype.io/
// To parse this JSON data, do
//
//     final offeringsModel = offeringsModelFromJson(jsonString);

import 'dart:convert';

OfferingsModel offeringsModelFromJson(String str) => OfferingsModel.fromJson(json.decode(str));

String offeringsModelToJson(OfferingsModel data) => json.encode(data.toJson());

class OfferingsModel {
  final List<DeliveryPackageList> deliveryPackageList;

  OfferingsModel({
    required this.deliveryPackageList,
  });

  factory OfferingsModel.fromJson(Map<String, dynamic> json) => OfferingsModel(
    deliveryPackageList: List<DeliveryPackageList>.from(json["deliveryPackageList"].map((x) => DeliveryPackageList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "deliveryPackageList": List<dynamic>.from(deliveryPackageList.map((x) => x.toJson())),
  };
}

class DeliveryPackageList {
  final String uuid;
  final bool isDefault;
  final bool isActive;
  final List<PlatformGroupList> platformGroupList;
  final List<OneTimePurchaseList> oneTimePurchaseList;
  final Filters filters;

  DeliveryPackageList({
    required this.uuid,
    required this.isDefault,
    required this.isActive,
    required this.platformGroupList,
    required this.oneTimePurchaseList,
    required this.filters,
  });

  factory DeliveryPackageList.fromJson(Map<String, dynamic> json) => DeliveryPackageList(
    uuid: json["uuid"],
    isDefault: json["isDefault"],
    isActive: json["isActive"],
    platformGroupList: List<PlatformGroupList>.from(json["platformGroupList"].map((x) => PlatformGroupList.fromJson(x))),
    oneTimePurchaseList: List<OneTimePurchaseList>.from(json["oneTimePurchaseList"].map((x) => OneTimePurchaseList.fromJson(x))),
    filters: Filters.fromJson(json["filters"]),
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid,
    "isDefault": isDefault,
    "isActive": isActive,
    "platformGroupList": List<dynamic>.from(platformGroupList.map((x) => x.toJson())),
    "oneTimePurchaseList": List<dynamic>.from(oneTimePurchaseList.map((x) => x.toJson())),
    "filters": filters.toJson(),
  };
}

class Filters {
  Filters();

  factory Filters.fromJson(Map<String, dynamic> json) => Filters(
  );

  Map<String, dynamic> toJson() => {
  };
}

class OneTimePurchaseList {
  final String uuid;
  final String name;
  final String productId;
  final String platform;

  OneTimePurchaseList({
    required this.uuid,
    required this.name,
    required this.productId,
    required this.platform,
  });

  factory OneTimePurchaseList.fromJson(Map<String, dynamic> json) => OneTimePurchaseList(
    uuid: json["uuid"],
    name: json["name"],
    productId: json["productId"],
    platform: json["platform"],
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid,
    "name": name,
    "productId": productId,
    "platform": platform,
  };
}

class PlatformGroupList {
  final String uuid;
  final String title;
  final LeSubscription? googleSubscription;
  final String? duration;
  final LeSubscription? appleSubscription;

  PlatformGroupList({
    required this.uuid,
    required this.title,
    this.googleSubscription,
    this.duration,
    this.appleSubscription,
  });

  factory PlatformGroupList.fromJson(Map<String, dynamic> json) => PlatformGroupList(
    uuid: json["uuid"],
    title: json["title"],
    googleSubscription: json["googleSubscription"] == null ? null : LeSubscription.fromJson(json["googleSubscription"]),
    duration: json["duration"],
    appleSubscription: json["appleSubscription"] == null ? null : LeSubscription.fromJson(json["appleSubscription"]),
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid,
    "title": title,
    "googleSubscription": googleSubscription?.toJson(),
    "duration": duration,
    "appleSubscription": appleSubscription?.toJson(),
  };
}

class LeSubscription {
  final String uuid;
  final String platform;
  final String title;
  final String sku;
  final String status;
  final String? duration;
  final DateTime updatedDate;
  final String primaryCountry;
  final double? primaryPrice;
  final String primaryCurrency;
  final String? skuGoogleBaseId;

  LeSubscription({
    required this.uuid,
    required this.platform,
    required this.title,
    required this.sku,
    required this.status,
    this.duration,
    required this.updatedDate,
    required this.primaryCountry,
    this.primaryPrice,
    required this.primaryCurrency,
    this.skuGoogleBaseId,
  });

  factory LeSubscription.fromJson(Map<String, dynamic> json) => LeSubscription(
    uuid: json["uuid"],
    platform: json["platform"],
    title: json["title"],
    sku: json["sku"],
    status: json["status"],
    duration: json["duration"],
    updatedDate: DateTime.parse(json["updatedDate"]),
    primaryCountry: json["primaryCountry"],
    primaryPrice: json["primaryPrice"]?.toDouble(),
    primaryCurrency: json["primaryCurrency"],
    skuGoogleBaseId: json["skuGoogleBaseId"],
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid,
    "platform": platform,
    "title": title,
    "sku": sku,
    "status": status,
    "duration": duration,
    "updatedDate": updatedDate.toIso8601String(),
    "primaryCountry": primaryCountry,
    "primaryPrice": primaryPrice,
    "primaryCurrency": primaryCurrency,
    "skuGoogleBaseId": skuGoogleBaseId,
  };
}
