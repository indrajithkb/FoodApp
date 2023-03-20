import 'dart:math';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WriteExamples extends StatefulWidget {
  const WriteExamples({super.key});

  @override
  State<WriteExamples> createState() => _WriteExamplesState();
}

class _WriteExamplesState extends State<WriteExamples> {
  final database =FirebaseDatabase.instance.ref();
String getRandomDrink(){
  final drinkList=["tea","coffee","cold brew","cappiccuno","latte","expresso"];
  return drinkList[Random().nextInt(drinkList.length)];
}
String getRandomNames(){
  final customerNames=["sam","ram","roh","indran","sid","ajay"];
  return customerNames[Random().nextInt(customerNames.length)];
}
  @override
  Widget build(BuildContext context) {
    final dailySpecialRef=database.child('foodSpecial/');
    return Scaffold(
      appBar: AppBar(title: Text("write details"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
               ElevatedButton(onPressed: ()async{
                try {
                    await dailySpecialRef. set(
                      // { "description":"Cappiccuno","price":2.99}
                    [ {
		"id": 1,
		"foodname": "Biriyani",
		"image": "https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food3.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114387"
	},
	{
		"id": 2,
		"foodname": "Porotta",
		"image": "https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food2.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114322"
	},
	{
		"id": 3,
		"foodname": "Chapathy",
		"image": "https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food1.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114324"
	},
	{
		"id": 4,
		"foodname": "Idli",
		"image": "https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food3.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114387"
	},
	{
		"id": 5,
		"foodname": "Dosa",
		"image": "https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food1.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114324"
	},
	{
		"id": 6,
		"foodname": "Appam",
		"image": "https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food2.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114322"
	},
	{
		"id": 7,
		"foodname": "Poori",
		"image": "https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food1.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114324"
	},
	{
		"id": 8,
		"foodname": "Puttu",
		"image": "https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food3.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114387"
	}

            ]
            );
                    // await database.update({"dailySpecial/price":3.99,"dailySpecialItem/price":4.99,});
                    // await dailySpecialRef.child("2"). set({"description":"latte","price":4.99});
                    print("special menu has been written");
                } catch (e) {
                 
                  print("got an error ! $e");
                  
                }
          
              }, child: Text("order item")),
              
              ElevatedButton(onPressed: (){
                final nextOrder=<String,dynamic>{
                  "description":getRandomDrink(),
                  "price":Random().nextInt(800)/100,
                  "customer":getRandomNames(),
                  "time":DateTime.now().millisecondsSinceEpoch
                };
                database.child("orders").push().set(nextOrder).then((value) => 
                print("drink has been ordered")
                ).catchError((e)=>
                print("got an error ! $e")
                );
              }, child: Text("make an order"))
              
            ],
            
          ),
        ),
      ),
    );
  }
}