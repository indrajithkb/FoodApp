
import 'package:foodieapp/statemanagement/model/demo_model.dart';
import 'package:http/http.dart';

class DemoRepository{
  String endpoint='https://food-delivery-app-5ff8c-default-rtdb.firebaseio.com/post.json';
 Future <DemoModel> demoUser()async{
    final response =await get(Uri.parse(endpoint));
    if(response.statusCode==200 || response.statusCode==201){
  //  print(response.body);
 return demoModelFromJson(response.body );

    }
    else{
 
      throw Exception(response.reasonPhrase);
    }
  }
}
