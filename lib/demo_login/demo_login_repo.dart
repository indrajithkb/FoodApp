// // ignore_for_file: noop_primitive_operations, avoid_dynamic_calls

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:foodieapp/demo_home/demo_home_ui.dart';
// import 'package:foodieapp/utils/sharedpref.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:http/http.dart';

// class DemoApiLoginRepo {
//   Future<dynamic> demoLogin({
//     required String email,
//     required String password,
//     required BuildContext context,
//   }) async {
//     final url = 'https://food-delivery-rv21.onrender.com/api/user/login';

//     try {
//       final response = await post(
//         Uri.parse(url),
//         body: {
//           'email': email,
//           'password': password,
//         },
//       );

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final res = jsonDecode(response.body.toString());
//         String sharedToken = res['user']['accessToken'].toString();
//         // print("login respnse token");
//         print(sharedToken);
//         saveToken(sharedToken);

//         Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => DemoHomeUI(),
//             ));
//         // print(res['user']['accessToken']);
//         print('Logged IN successfully');
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
