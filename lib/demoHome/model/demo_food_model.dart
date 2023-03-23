


// To parse this JSON data, do
//
//     final foodDemoModel = foodDemoModelFromJson(jsonString);


// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

FoodDemoModel foodDemoModelFromJson(String str) =>
 FoodDemoModel.fromJson(json.decode(str)as Map<String,dynamic>);

String foodDemoModelToJson(FoodDemoModel data) => json.encode(data.toJson());

class FoodDemoModel {
    FoodDemoModel({
        required this.nr2VxEfuKw1HWplkxdy,
    });

    factory FoodDemoModel.fromJson(dynamic json) => FoodDemoModel(
        nr2VxEfuKw1HWplkxdy: Nr2VxEfuKw1HWplkxdy.
        fromJson(json['-NR2VxEfuKw1hWplkxdy']as Map<String,dynamic>),
    );

    Nr2VxEfuKw1HWplkxdy nr2VxEfuKw1HWplkxdy;

    Map<String, dynamic> toJson() => {
        '-NR2VxEfuKw1hWplkxdy': nr2VxEfuKw1HWplkxdy.toJson(),
    };
}

class Nr2VxEfuKw1HWplkxdy {
    Nr2VxEfuKw1HWplkxdy({
        required this.banners,
        required this.foodBanners,
        required this.xploreResto,
    });

    factory Nr2VxEfuKw1HWplkxdy.fromJson(dynamic json) => Nr2VxEfuKw1HWplkxdy(
        banners: List<Banners>.from((json['banners']as List).map((x)
         => Banners.fromJson(x as dynamic),),),
        foodBanners: List<FoodBanner>.from((json['foodBanners']as List).map((x) 
        => FoodBanner.fromJson(x as dynamic),),),
        xploreResto:List<XploreResto>.from((json['xploreResto']as List).map((x) 
        => XploreResto.fromJson(x as dynamic),),),
    );

    List<Banners> banners;
    List<FoodBanner> foodBanners;
    List<XploreResto> xploreResto;

    Map<String, dynamic> toJson() => {
        'banners': List<dynamic>.from(banners.map((x) => x.toJson())),
        'foodBanners': List<dynamic>.from(foodBanners.map((x) => x.toJson())),
        'xploreResto': List<dynamic>.from(xploreResto.map((x) => x.toJson())),
    };
}

class Banners {
    Banners({
        required this.id,
        required this.image,
    });

    factory Banners.fromJson(dynamic json) => Banners(
        id: json['id'] as int,
        image: json['image']as String,
    );

    int id;
    String image;

    Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
    };
}
class XploreResto {
    XploreResto({
        required this.id,
        required this.image,
    });

    factory XploreResto.fromJson(dynamic json) => XploreResto(
        id: json['id'] as int,
        image: json['image']as String,
    );

    int id;
    String image;

    Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
    };
}

class FoodBanner {
    FoodBanner({
        required this.foodname,
        required this.id,
        required this.image,
    });

    factory FoodBanner.fromJson(dynamic json) => FoodBanner(
        foodname: json['foodname'] as String,
        id: json['id']as int,
        image: json['image']as String,
    );

    String foodname;
    int id;
    String image;

    Map<String, dynamic> toJson() => {
        'foodname': foodname,
        'id': id,
        'image': image,
    };
}
