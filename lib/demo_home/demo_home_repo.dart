// import 'package:foodieapp/demo_home/demo_model_home.dart';
// import 'package:foodieapp/utils/sharedpref.dart';
// import 'package:http/http.dart';

// class DemoApiHomeRepo{

// String homeUrl='https://food-delivery-rv21.onrender.com/api/home';

// Future<HomeApiModel> demoHomeInn()async{
  
//   final String? token=await getToken();
//   print(token);
//   // print("sdfghjk");
//     final response =await get(Uri.parse(homeUrl),headers: {
//       'Authorization':'Bearer $token'
//     });
//   // print("sdfghjyikcd k");
//   // print(response.statusCode);
//     if(response.statusCode==200 || response.statusCode==201){
//       print(response.body);
//       return homeApiModelFromJson(response.body);
//     } else{
//       // print('errrr');
//       throw Exception(response.reasonPhrase);
//     }

// }

// }
