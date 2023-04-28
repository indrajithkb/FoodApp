// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:foodieapp/homeScreen/view/model/api_home_model.dart';
import 'package:foodieapp/homeScreen/view/widgets/home/bottom_home_components.dart';
import 'package:foodieapp/homeScreen/view/widgets/top_bar.dart';
import 'package:foodieapp/utils/constants.dart';
import 'package:sizer/sizer.dart';
List<XploreResto>favList=[];
class FavoritesTab extends StatelessWidget {
  FavoritesTab({super.key});
  // final List<String> imgList = [
  //   'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  //   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  //   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  //   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  //   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  // ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.sp, right: 2.sp, top: 20.sp),
            child: SizedBox(
              height: 9.h,
              child: const TopBar(),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.sp),
            child: Text(
              'Favorite Restaurants',
              style: FoodDeliveryTextStyles.homeScreenTitles,
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          SizedBox(
            height: 72.h,
            child: ListView.builder(
              itemCount: favList.length,
              itemBuilder: (context, index) {
                return Text(favList[index].hotel);
              
            },),
            // child: ListView.builder(
            //   itemCount:favList.length,
            //   itemBuilder: (context, index) {
            //     return Padding(
            //       padding: EdgeInsets.only(
            //         bottom: 15.sp,
            //         left: 20.sp,
            //         right: 20.sp,
            //       ),
            //       child: Stack(
            //         children: [
            //           Column(
            //             children: [
            //               DecoratedBox(
            //                 decoration: const BoxDecoration(),
            //                 child: ClipRRect(
            //                   borderRadius: BorderRadius.circular(25),
            //                   child: Image.network(
            //                     hotelList[index].image,
            //                     height: 13.h,
            //                     width: 87.w,
            //                     fit: BoxFit.cover,
            //                   ),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsets.only(
            //                   left: 5.sp,
            //                   right: 5.sp,
            //                   top: 5.sp,
            //                 ),
            //                 child: Row(
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Text(hotelList[index].hotel),
            //                         Padding(
            //                           padding: EdgeInsets.only(top: 5.sp),
            //                           child: Text(
            //                               '${hotelList[index].place} - ${hotelList[index].distance}kms'),
            //                         ),
            //                       ],
            //                     ),
            //                     Row(
            //                       children: [
            //                         Padding(
            //                           padding: EdgeInsets.only(
            //                             right: 1.5.sp,
            //                             bottom: 2.sp,
            //                           ),
            //                           child: Image.asset(
            //                             'assets/images/deliveryBike.png',
            //                           ),
            //                         ),
            //                         Text('${hotelList[index].time} mins')
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //               )
            //             ],
            //           ),
            //           Container(
            //             height: 13.h,
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(25),
            //             ),
            //           ),
            //           Positioned(
            //             bottom: 70,
            //             left: 20,
            //             child: Text(
            //               '${hotelList[index].off} %off',
            //               style: FoodDeliveryTextStyles.exploreRestoBanner
            //                   .copyWith(
            //                 fontSize: 18,
            //               ),
            //             ),
            //           ),
            //           Positioned(
            //             bottom: 55,
            //             left: 20,
            //             child: Text(
            //               'upto ${FoodDeliveryConstantText.rupeesSymbol} 125',
            //               style: FoodDeliveryTextStyles.exploreRestoBanner
            //                   .copyWith(
            //                 fontSize: 12,
            //               ),
            //             ),
            //           ),
            //           Positioned(
            //             top: 3,
            //             right: 5,
            //             child: IconButton(
            //               onPressed: () {},
            //               icon: const Icon(
            //                 Icons.favorite,
            //                 color: Color(0xFFE6556F),
            //               ),
            //             ),
            //           ),
            //           Positioned(
            //             right: 15,
            //             bottom: 58,
            //             child: SizedBox(
            //               height: 2.7.h,
            //               width: 13.w,
            //               child: ElevatedButton(
            //                 onPressed: () {},
            //                 style: ElevatedButton.styleFrom(
            //                   backgroundColor: const Color(0xFFE6556F),
            //                   shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(20),
            //                   ),
            //                 ),
            //                 child: Container(),
            //               ),
            //             ),
            //           ),
            //           Positioned(
            //             right: 22,
            //             bottom: 60,
            //             child: Row(
            //               children: [
            //                 Padding(
            //                   padding: EdgeInsets.only(right: 2.sp),
            //                   child: const Icon(
            //                     Icons.star,
            //                     size: 15,
            //                     color: Color(0xFFFFFFFF),
            //                   ),
            //                 ),
            //                 Text(
            //                   hotelList[index].rating.toString(),
            //                   style: FoodDeliveryTextStyles.exploreRestoBanner
            //                       .copyWith(
            //                     fontSize: 14,
            //                   ),
            //                   // maxLines: 1,
            //                 ),
            //               ],
            //             ),
            //           )
            //         ],
            //       ),
            //     );
            //   },
            // ),
          )
        ],
      ),
    );
  }
}
