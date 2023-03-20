


// //list inside object
// // To parse this JSON data, do
// //
// //     final demoModel = demoModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

DemoModel demoModelFromJson(String str) => DemoModel.fromJson(json.decode(str)as Map<String,dynamic>);

String demoModelToJson(DemoModel data) => json.encode(data.toJson());

class DemoModel {
    DemoModel({
        required this.demosub,
    });

    List<Nq8C9ItMdKp94BJ8Gkg> demosub;

    factory DemoModel.fromJson(Map<String, dynamic> json) => DemoModel(
        demosub: List<Nq8C9ItMdKp94BJ8Gkg>.from((json["-NQ8c9ItMdKP94bJ8GKG"]as List).map((x) => Nq8C9ItMdKp94BJ8Gkg.fromJson(x as Map<String,dynamic>))),
    );

    Map<String, dynamic> toJson() => {
        "-NQ8c9ItMdKP94bJ8GKG": List<dynamic>.from(demosub.map((x) => x.toJson())),
    };
}

class Nq8C9ItMdKp94BJ8Gkg {
    Nq8C9ItMdKp94BJ8Gkg({
        required this.foodname,
        required this.id,
        required this.image,
    });

    String foodname;
    int id;
    String image;

    factory Nq8C9ItMdKp94BJ8Gkg.fromJson(Map<String, dynamic> json) => Nq8C9ItMdKp94BJ8Gkg(
        foodname: json["foodname"] as String,
        id: json["id"]as int,
        image: json["image"] as String,
    );

    Map<String, dynamic> toJson() => {
        "foodname": foodname,
        "id": id,
        "image": image,
    };
}


// //list of objects
// // To parse this JSON data, do
// //
// //     final demoModel = demoModelFromJson(jsonString);

// import 'package:meta/meta.dart';
// import 'dart:convert';

// List<DemoModel> demoModelFromJson(String str){
//   return List<DemoModel>.from((json.decode(str) as List).map((x) => 
// DemoModel.fromJson(x)));
// } 

// String demoModelToJson(List<DemoModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class DemoModel {
//     DemoModel({
//         required this.id,
//         required this.title,
//         required this.price,
//         required this.description,
//         required this.category,
//         required this.image,
//         required this.rating,
//     });

//     int id;
//     String title;
//     double price;
//     String description;
//     Category category;
//     String image;
//     Rating rating;

//     factory DemoModel.fromJson(dynamic json) => DemoModel(
//         id: json["id"] as int,
//         title: json["title"] as String,
//         price: json["price"]?.toDouble() as double,
//         description: json["description"] as String,
//         category: categoryValues.map[json["category"]]!,
//         image: json["image"] as String,
//         rating: Rating.fromJson(json["rating"] as Map<String, dynamic>),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "price": price,
//         "description": description,
//         "category": categoryValues.reverse[category],
//         "image": image,
//         "rating": rating.toJson(),
//     };
// }

// enum Category { MEN_S_CLOTHING, JEWELERY, ELECTRONICS, WOMEN_S_CLOTHING }

// final categoryValues = EnumValues({
//     "electronics": Category.ELECTRONICS,
//     "jewelery": Category.JEWELERY,
//     "men's clothing": Category.MEN_S_CLOTHING,
//     "women's clothing": Category.WOMEN_S_CLOTHING
// });

// class Rating {
//     Rating({
//         required this.rate,
//         required this.count,
//     });

//     double rate;
//     int count;

//     factory Rating.fromJson(Map<String, dynamic> json) => Rating(
//           rate: json["rate"]?.toDouble() as double ,
//         count: json["count"] as int,
//     );

//     Map<String, dynamic> toJson() => {
//         "rate": rate,
//         "count": count,
//     };
// }

// class EnumValues<T> {
//     Map<String, T> map;
//     late Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//         reverseMap = map.map((k, v) => MapEntry(v, k));
//         return reverseMap;
//     }
// }




//single object
// // To parse this JSON data, do
// //
// //     final demoModel = demoModelFromJson(jsonString);

// import 'package:meta/meta.dart';
// import 'dart:convert';

// DemoModel demoModelFromJson(String str) => DemoModel.fromJson(json.decode(str ) as Map<String,dynamic>);

// String demoModelToJson(DemoModel data) => json.encode(data.toJson());

// class DemoModel {
//     DemoModel({
//         required this.id,
//         required this.title,
//         required this.price,
//         required this.description,
//         required this.category,
//         required this.image,
//         required this.rating,
//     });

//     int id;
//     String title;
//     double price;
//     String description;
//     String category;
//     String image;
//     Rating rating;

//     DemoModel copyWith({
//         int ?id,
//         String ?title,
//         double ?price,
//         String ?description,
//         String ?category,
//         String ?image,
//         Rating ?rating,
//     }) => 
//         DemoModel(
//             id: id ?? this.id,
//             title: title ?? this.title,
//             price: price ?? this.price,
//             description: description ?? this.description,
//             category: category ?? this.category,
//             image: image ?? this.image,
//             rating: rating ?? this.rating,
//         );

//     factory DemoModel.fromJson(Map<String, dynamic> json) => DemoModel(
        // id: json["id"] as int,
        // title: json["title"] as String,
        // price: json["price"]?.toDouble() as double,
        // description: json["description"] as String,
        // category: json["category"] as String,
        // image: json["image"] as String,
        // rating: Rating.fromJson(json["rating"] as Map<String,dynamic>),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "price": price,
//         "description": description,
//         "category": category,
//         "image": image,
//         "rating": rating.toJson(),
//     };
// }

// class Rating {
//     Rating({
//         required this.rate,
//         required this.count,
//     });

//     double rate;
//     int count;

//     Rating copyWith({
//         double ?rate,
//         int ?count,
//     }) => 
//         Rating(
//             rate: rate ?? this.rate,
//             count: count ?? this.count,
//         );

//     factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        // rate: json["rate"]?.toDouble() as double ,
        // count: json["count"] as int,
//     );

//     Map<String, dynamic> toJson() => {
//         "rate": rate,
//         "count": count,
//     };
// }
