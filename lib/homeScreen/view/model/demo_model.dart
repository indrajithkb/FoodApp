

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
  List<NQyXi099IQRk4xAvC8d>? nQ8c9ItMdKP94bJ8GKG;

  DemoModel({this.nQ8c9ItMdKP94bJ8GKG});

  DemoModel.fromJson(dynamic json) {
    if (json['-NQyXi099IQRk4xAvC8d'] != null) {
      nQ8c9ItMdKP94bJ8GKG = <NQyXi099IQRk4xAvC8d>[];
      json['-NQyXi099IQRk4xAvC8d'].forEach((v) {
        nQ8c9ItMdKP94bJ8GKG!.add(NQyXi099IQRk4xAvC8d.fromJson(v as Map<String, dynamic>));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nQ8c9ItMdKP94bJ8GKG != null) {
      data['-NQyXi099IQRk4xAvC8d'] =
          this.nQ8c9ItMdKP94bJ8GKG!.map((v ) => v.toJson()).toList();
    }
    return data;
  }
}

class NQyXi099IQRk4xAvC8d {
  String? foodname;
  int? id;
  String? image;

  NQyXi099IQRk4xAvC8d({this.foodname, this.id, this.image});

  NQyXi099IQRk4xAvC8d.fromJson(Map<String, dynamic> json) {
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
