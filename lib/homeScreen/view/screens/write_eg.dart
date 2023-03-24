// ignore_for_file: lines_longer_than_80_chars, inference_failure_on_untyped_parameter

import 'dart:math';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


class WriteExamples extends StatefulWidget {
  const WriteExamples({super.key});

  @override
  State<WriteExamples> createState() => _WriteExamplesState();
}

class _WriteExamplesState extends State<WriteExamples> {
  final database =FirebaseDatabase.instance.ref();
String getRandomDrink(){
  final drinkList=['tea','coffee','cold brew','cappiccuno','latte','expresso'];
  return drinkList[Random().nextInt(drinkList.length)];
}
String getRandomNames(){
  final customerNames=['sam','ram','roh','indran','sid','ajay'];
  return customerNames[Random().nextInt(customerNames.length)];
}
  @override
  Widget build(BuildContext context) {
    final dailySpecialRef=database.child('foodSpecial/');
    return Scaffold(
      appBar: AppBar(title: const Text('write details'),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
               ElevatedButton(onPressed: ()async{
                try {
                    await dailySpecialRef. set(
                      // { "description":"Cappiccuno","price":2.99}
                      {

	'foodBanners': [{
			'foodname': 'biriyani',
			'id': 1,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food3.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114387'
		},
		{
			'foodname': 'Fried rice',
			'id': 2,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food2.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114322'
		},
		{
			'foodname': 'Chapathy',
			'id': 3,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food1.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114324'
		},
		{
			'foodname': 'Idli',
			'id': 4,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food3.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114387'
		},
		{
			'foodname': 'Dosa',
			'id': 5,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food1.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114324'
		},
		{
			'foodname': 'Appam',
			'id': 6,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food2.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114322'
		},
		{
			'foodname': 'Poori',
			'id': 7,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food1.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114324'
		},
		{
			'foodname': 'Puttu',
			'id': 8,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food3.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114387'
		}
	],
	'banners': [{
			'id': 1,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/banners/banner1?updatedAt=1679296207801'
		},
		{
			'id': 2,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/banners/banner2?updatedAt=1679296225943'
		},
		{
			'id': 3,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/banners/banner3?updatedAt=1679296188569'
		},
		{
			'id': 4,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/banners/banner4?updatedAt=1679296275084'
		},
		{
			'id': 5,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/banners/banner5?updatedAt=1679296321204'
		}
	],
	'xploreResto': [{
			'id': 1,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/banners/banner1?updatedAt=1679296207801'
		},
		{
			'id': 2,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/banners/banner2?updatedAt=1679296225943'
		},
		{
			'id': 3,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/banners/banner3?updatedAt=1679296188569'
		},
		{
			'id': 4,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/banners/banner4?updatedAt=1679296275084'
		},
		{
			'id': 5,
			'image': 'https://ik.imagekit.io/x5sm8rsdy/banners/banner5?updatedAt=1679296321204'
		}
	]

}
  //                   [ {
	// 	'id': 1,
	// 	'foodname': 'Biriyani',
	// 	'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food3.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114387'
	// },
	// {
	// 	'id': 2,
	// 	'foodname': 'Porotta',
	// 	'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food2.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114322'
	// },
	// {
	// 	'id': 3,
	// 	'foodname': 'Chapathy',
	// 	'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food1.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114324'
	// },
	// {
	// 	'id': 4,
	// 	'foodname': 'Idli',
	// 	'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food3.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114387'
	// },
	// {
	// 	'id': 5,
	// 	'foodname': 'Dosa',
	// 	'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food1.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114324'
	// },
	// {
	// 	'id': 6,
	// 	'foodname': 'Appam',
	// 	'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food2.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114322'
	// },
	// {
	// 	'id': 7,
	// 	'foodname': 'Poori',
	// 	'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food1.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114324'
	// },
	// {
	// 	'id': 8,
	// 	'foodname': 'Puttu',
	// 	'image': 'https://ik.imagekit.io/x5sm8rsdy/food_delivery_app/food3.png?ik-sdk-version=javascript-1.4.3&updatedAt=1678249114387'
	// }

  //           ],
            );
                    // await database.update({"dailySpecial/price":3.99,"dailySpecialItem/price":4.99,});
                    // await dailySpecialRef.child("2"). set({"description":"latte","price":4.99});
                    debugPrint('special menu has been written');
                } catch (e) {
                 
                  // print('got an error ! $e');
                  
                }
          
              }, child: const Text('order item'),),
              
              ElevatedButton(onPressed: (){
                final nextOrder=<String,dynamic>{
                  'description':getRandomDrink(),
                  'price':Random().nextInt(800)/100,
                  'customer':getRandomNames(),
                  'time':DateTime.now().millisecondsSinceEpoch
                };
                database.child('orders').push().set(nextOrder).then((value) => 
                debugPrint('drink has been ordered'),
                ).catchError((e)=>
          debugPrint('got an error ! $e'),
                );
              }, child: const Text('make an order'),)
              
            ],
            
          ),
        ),
      ),
    );
  }
}
