// ignore_for_file: use_build_context_synchronously, inference_failure_on_instance_creation, lines_longer_than_80_chars, unawaited_futures

import 'package:flutter/material.dart';

import 'package:foodieapp/login/view/screens/screenLogin.dart';

import 'package:shared_preferences/shared_preferences.dart';

saveToken(String token) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
//  print(token);
 prefs.setString('token', token);
  debugPrint('saveToke');
 debugPrint(token);
}

Future<String?> getToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
final tokenFetched= prefs.getString('token');
 debugPrint('gettoken');
 debugPrint(tokenFetched);
  return tokenFetched;
 
}

Future<void>clearToken({required BuildContext context})async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
 prefs.remove('token');
  // Navigator.push(context,MaterialPageRoute(builder: (context) => ScreenLogin(),));
  
}
