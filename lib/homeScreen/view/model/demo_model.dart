import 'dart:convert';

// DemoModel demoModelFromJson(String str) => 
//DemoModel.fromJson(json.decode(str)as Map<String,dynamic>);

// String demoModelToJson(DemoModel data) => json.encode(data.toJson());

// class DemoModel {
//     DemoModel({
//         required this.demosub,
//     });

//     List<Nq8C9ItMdKp94BJ8Gkg> demosub;

//     factory DemoModel.fromJson(Map<String, dynamic> json) {
//     return  DemoModel(
//         demosub: List<Nq8C9ItMdKp94BJ8Gkg>.from((json["-NQ8c9ItMdKP94bJ8GKG"]as List).
//         map((x) => Nq8C9ItMdKp94BJ8Gkg.fromJson(x as Map<String,dynamic>))),
//     );
//     } 

//     Map<String, dynamic> toJson() => {
//         "-NQ8c9ItMdKP94bJ8GKG": List<dynamic>.from(demosub.map((x) => x.toJson())),
//     };
// }

// class Nq8C9ItMdKp94BJ8Gkg {
//     Nq8C9ItMdKp94BJ8Gkg({
//         required this.foodname,
//         required this.id,
//         required this.image,
//     });

//     String foodname;
//     int id;
//     String image;

//     factory Nq8C9ItMdKp94BJ8Gkg.fromJson(Map<String, dynamic> json) => Nq8C9ItMdKp94BJ8Gkg(
//         foodname: json["foodname"] as String,
//         id: json["id"]as int,
//         image: json["image"] as String,
//     );

//     Map<String, dynamic> toJson() => {
//         "foodname": foodname,
//         "id": id,
//         "image": image,
//     };
// }

class DemoModel {
  List<NQ8c9ItMdKP94bJ8GKG>? nQ8c9ItMdKP94bJ8GKG;

  DemoModel({this.nQ8c9ItMdKP94bJ8GKG});

  DemoModel.fromJson(Map<String, dynamic> json) {
    if (json['-NQ8c9ItMdKP94bJ8GKG'] != null) {
      nQ8c9ItMdKP94bJ8GKG = <NQ8c9ItMdKP94bJ8GKG>[];
      json['-NQ8c9ItMdKP94bJ8GKG'].forEach((v) {
        nQ8c9ItMdKP94bJ8GKG!.add(new NQ8c9ItMdKP94bJ8GKG.fromJson(v as Map<String, dynamic>));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nQ8c9ItMdKP94bJ8GKG != null) {
      data['-NQ8c9ItMdKP94bJ8GKG'] =
          this.nQ8c9ItMdKP94bJ8GKG!.map((v ) => v.toJson()).toList();
    }
    return data;
  }
}

class NQ8c9ItMdKP94bJ8GKG {
  String? foodname;
  int? id;
  String? image;

  NQ8c9ItMdKP94bJ8GKG({this.foodname, this.id, this.image});

  NQ8c9ItMdKP94bJ8GKG.fromJson(Map<String, dynamic> json) {
    foodname = json['foodname'] as String;
    id = json['id'] as int;
    image = json['image'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['foodname'] = this.foodname;
    data['id'] = this.id;
    data['image'] = this.image;
    return data;
  }
}
