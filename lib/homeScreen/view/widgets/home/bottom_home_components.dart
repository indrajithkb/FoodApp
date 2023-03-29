import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodieapp/homeScreen/view/model/demo_model.dart';
import 'package:foodieapp/utils/constants.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class BottomHomeComponents extends StatelessWidget {
  BottomHomeComponents({super.key});
  final ref = FirebaseDatabase.instance.ref('post/-NRWifmDJwiwH8wwvlhV');
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: ref.onValue,
      builder: (context, snapshot) {
        if (snapshot.hasData &&
            !snapshot.hasError &&
            snapshot.data!.snapshot.value != null) {
          final snap = snapshot.data!.snapshot.value as Map<Object?, Object?>;
          final snapData = HomeModel.fromJson(snap);
          // print(snapData.hotelCount);

          return Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 22.sp),
                    child: Text(
                      ' ${snapData.hotelCount} ${FoodDeliveryConstantText.exploreRestoTitle}',
                      style: FoodDeliveryTextStyles.homeScreenTitles,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 60.h,
                child: ListView.builder(
                  itemCount: snapData.xploreResto.length,
                  //  imgList.length,
                  itemBuilder: (context, index) {
                    // final img = imgList[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: 15.sp,
                        left: 20.sp,
                        right: 20.sp,
                      ),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.network(
                                  // img,
                                  snapData.xploreResto[index].image,
                                  height: 13.h,
                                  width: 87.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 5.sp,
                                  right: 5.sp,
                                  top: 5.sp,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          // 'Chakarapanthal'
                                          snapData.xploreResto[index].hotel,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 5.sp,
                                          ),
                                          child: Text(
                                            // 'Kochi -5km'
                                            ' ${snapData.xploreResto[index].place} - ${snapData.xploreResto[index].distance}kms  ',
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: 1.5.sp,
                                            bottom: 2.sp,
                                          ),
                                          child: Image.asset(
                                            'assets/images/deliveryBike.png',
                                          ),
                                        ),
                                        Text(
                                          // '30 min'
                                          '${snapData.xploreResto[index].time} mins',
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 13.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              gradient: FoodDeliveryColor.gradient,
                            ),
                          ),
                          Positioned(
                            bottom: 70,
                            left: 20,
                            child: Text(
                              // '10 %off',
                              '${snapData.xploreResto[index].off} %Off',
                              style: FoodDeliveryTextStyles.exploreRestoBanner
                                  .copyWith(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 55,
                            left: 20,
                            child: Text(
                              'upto ${FoodDeliveryConstantText.rupeesSymbol} 125',
                              style: FoodDeliveryTextStyles.exploreRestoBanner
                                  .copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 3,
                            right: 5,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 15,
                            bottom: 58,
                            child: SizedBox(
                              height: 3.5.h,
                              width: 18.w,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFE6556F),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 2.sp,
                                      ),
                                      child: const Icon(
                                        Icons.star,
                                        size: 14,
                                      ),
                                    ),
                                    Text(
                                      //  '4.5',

                                      snapData.xploreResto[index].rating
                                          .toString(),
                                      style: FoodDeliveryTextStyles
                                          .exploreRestoBanner
                                          .copyWith(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        } else {
          return Shimmer.fromColors(
              baseColor: Colors.grey.shade400,
              highlightColor: Colors.grey.shade300,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 22.sp),
                          child: Container(
                            color: Colors.white,
                            height: 2.h,
                            width: 55.w,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    height: 60.h,
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: 15.sp,
                        left: 20.sp,
                        right: 20.sp,
                      ),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Container(
                                  height: 13.h,
                                  color: Colors.white,
                                  width: 87.w,
                                ),
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),);
        }
      },
    );
  }
}
