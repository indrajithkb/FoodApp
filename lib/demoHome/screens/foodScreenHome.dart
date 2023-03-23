
// ignore_for_file: lines_longer_than_80_chars, cast_nullable_to_non_nullable

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:foodieapp/demoHome/model/demo_food_model.dart';
import 'package:sizer/sizer.dart';

class FoodScreen extends StatelessWidget {
   FoodScreen({super.key});
final ref = FirebaseDatabase.instance.ref('post/-NR2VxEfuKw1hWplkxdy');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: SizedBox(
            height: 700,
            width: double.infinity,
            child: StreamBuilder(
                         stream: ref.onValue,
                         builder: (context, snapshot) {
                           if (snapshot.hasData &&
                               !snapshot.hasError &&
                               snapshot.data!.snapshot.value != null) {
                                debugPrint('data available');

                    final snap = snapshot.data!.snapshot.value as Map<Object?, Object?> ;
                    final snapData=Nr2VxEfuKw1HWplkxdy.fromJson(snap);
                //list
                //  var snap = snapshot.data!.snapshot.value as List<Object?> ; 
                //         var snapData=snap.map((e) {
                //           print(e);
                //    return Banners.fromJson(e);
                // }).toList();

                //               print(snapData[0].image);
 
                          
                             return ListView.builder(
                               scrollDirection: Axis.horizontal,
                               itemCount:
                              //  myList.length,
                                  snapData.foodBanners.length,
                                      //  snapshot.data!.snapshot.children.length,
                               itemBuilder: (context, index) {
                                 return Column(
                                  //  mainAxisAlignment:
                                      //  MainAxisAlignment.spaceEvenly,
                                   children: [
                                    const SizedBox(height: 20,),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 5),
                                       child: CircleAvatar(
                                         radius: 35,
                                         backgroundImage: NetworkImage(
                                          snapData.foodBanners[index].image
                                      //  myList[index][index]["image"].toString()
                                        //   //  snapData[index].image,
                                        //   //  list[index]["image"].toString()
                                        //   //    userr.demosub[index].image
                                             ,),
                                       ),
                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(left: 5.sp),
                                       child: Text(
                                          // "data",
                                         snapData.foodBanners[index].id.toString(),
                                        // myList[index][index]["id"].toString(),
                                        // snapData[index].foodname,
                                          // snapData[index].id.toString(),
                                         // list[index]["foodname"].toString(),
                                         // userr.demosub[index].foodname,
                                           style: const TextStyle(
                                             fontSize: 12,
                                             fontFamily: 'SpaceGrotesk',
                                             fontWeight: FontWeight.w600,
                                             color: Color(0xFF696969),
                                           ),),
                                     ),
                                   ],
                                 );
                               },
                             );
                           } else {
                             return const Center(
                               child: Text('no data'),);
                           }
                         },),
          ),
        ),
      ),
    );
  }
}
