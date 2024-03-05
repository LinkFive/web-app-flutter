// generated with https://app.quicktype.io/
// To parse this JSON data, do
//
//     final offeringsModel = offeringsModelFromJson(jsonString);

import 'dart:convert';

OfferingsModel offeringsModelFromJson(String str) => OfferingsModel.fromJson(json.decode(str));

String offeringsModelToJson(OfferingsModel data) => json.encode(data.toJson());

class OfferingsModel {
  final Data data;

  OfferingsModel({
    required this.data,
  });

  factory OfferingsModel.fromJson(Map<String, dynamic> json) => OfferingsModel(
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
  };
}

class Data {
  final List<DeliveryPackage> deliveryPackageList;

  Data({
    required this.deliveryPackageList,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    deliveryPackageList: List<DeliveryPackage>.from(json["deliveryPackageList"].map((x) => DeliveryPackage.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "deliveryPackageList": List<dynamic>.from(deliveryPackageList.map((x) => x.toJson())),
  };
}

class DeliveryPackage {
  final String uuid;
  final bool isDefault;
  final bool isActive;
  final List<PlatformGroup> platformGroupList;
  final List<OneTimePurchase> oneTimePurchaseList;
  final Filters filters;

  DeliveryPackage({
    required this.uuid,
    required this.isDefault,
    required this.isActive,
    required this.platformGroupList,
    required this.oneTimePurchaseList,
    required this.filters,
  });

  factory DeliveryPackage.fromJson(Map<String, dynamic> json) => DeliveryPackage(
    uuid: json["uuid"],
    isDefault: json["isDefault"],
    isActive: json["isActive"],
    platformGroupList: List<PlatformGroup>.from(json["platformGroupList"].map((x) => PlatformGroup.fromJson(x))),
    oneTimePurchaseList: List<OneTimePurchase>.from(json["oneTimePurchaseList"].map((x) => OneTimePurchase.fromJson(x))),
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

class OneTimePurchase {
  final String uuid;
  final String name;
  final String productId;
  final String platform;

  OneTimePurchase({
    required this.uuid,
    required this.name,
    required this.productId,
    required this.platform,
  });

  factory OneTimePurchase.fromJson(Map<String, dynamic> json) => OneTimePurchase(
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

class PlatformGroup {
  final String uuid;
  final String title;
  final GoogleSubscription googleSubscription;
  final String? duration;

  PlatformGroup({
    required this.uuid,
    required this.title,
    required this.googleSubscription,
    this.duration,
  });

  factory PlatformGroup.fromJson(Map<String, dynamic> json) => PlatformGroup(
    uuid: json["uuid"],
    title: json["title"],
    googleSubscription: GoogleSubscription.fromJson(json["googleSubscription"]),
    duration: json["duration"],
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid,
    "title": title,
    "googleSubscription": googleSubscription.toJson(),
    "duration": duration,
  };
}

class GoogleSubscription {
  final String uuid;
  final String platform;
  final String title;
  final String sku;
  final String skuGoogleBaseId;
  final String status;
  final DateTime updatedDate;
  final String primaryCountry;
  final String primaryCurrency;

  GoogleSubscription({
    required this.uuid,
    required this.platform,
    required this.title,
    required this.sku,
    required this.skuGoogleBaseId,
    required this.status,
    required this.updatedDate,
    required this.primaryCountry,
    required this.primaryCurrency,
  });

  factory GoogleSubscription.fromJson(Map<String, dynamic> json) => GoogleSubscription(
    uuid: json["uuid"],
    platform: json["platform"],
    title: json["title"],
    sku: json["sku"],
    skuGoogleBaseId: json["skuGoogleBaseId"],
    status: json["status"],
    updatedDate: DateTime.parse(json["updatedDate"]),
    primaryCountry: json["primaryCountry"],
    primaryCurrency: json["primaryCurrency"],
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid,
    "platform": platform,
    "title": title,
    "sku": sku,
    "skuGoogleBaseId": skuGoogleBaseId,
    "status": status,
    "updatedDate": updatedDate.toIso8601String(),
    "primaryCountry": primaryCountry,
    "primaryCurrency": primaryCurrency,
  };
}
