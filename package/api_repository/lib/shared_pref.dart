import 'package:flutter/material.dart';
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