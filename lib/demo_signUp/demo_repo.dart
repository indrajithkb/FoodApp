// import 'dart:convert';

// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:http/http.dart';

// class DemoApiRepo {
//   Future<dynamic> demoSignUp(
//       {required String email,
//       required String password,
//       required String username}) async {
//     final url = 'https://food-delivery-rv21.onrender.com/api/user';

//     try {
//       final response = await post(
//         Uri.parse(url),
//         body: {'email': email, 'password': password, 'name': username},
//       );

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final res = jsonDecode(response.body.toString());
//         print(res['message']);
//         print('acc created successfully');
//         // return res["message"];
//         return Fluttertoast.showToast(msg: '${res["message"]}');
//       } else {
//         final res = jsonDecode(response.body);
//         print(res['message']);

//         return Fluttertoast.showToast(msg: '${res["message"]}');
//         //  res['message'].toString();
//         //  print(response.statusCode);
//         // throw Exception('Request Error: ${response.body}');
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// }
