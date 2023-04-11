// ignore_for_file: inference_failure_on_instance_creation, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:foodieapp/homeScreen/view/screens/screen_home.dart';
import 'package:foodieapp/login/view/widgets/reusable_widget.dart';
import 'package:foodieapp/utils/constants.dart';
import 'package:sizer/sizer.dart';

class AddressBook extends StatelessWidget {
  const AddressBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.sp, right: 2.sp, top: 45.sp),
              child: SizedBox(
                height: 8.h,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScreenHome(),
                          ),
                        );
                      },
                      icon: Image.asset('assets/images/backButton.png'),
                    ),
                    Text(
                      FoodDeliveryConstantText.addressBook,
                      style: FoodDeliveryTextStyles.homeScreenTitles,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25.sp,
                right: 25.sp,
              ),
              child: SizedBox(
                height: 16.h,
                width: 85.w,
                // color: Colors.amber,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4.h,
                      width: 20.w,
                      //  color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/home.png'),
                          Text(
                            'Home',
                            style: FoodDeliveryTextStyles.homeScreenTitles
                                .copyWith(fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Carnival infopark,phase 2,Infopark,Kochi',
                      style: FoodDeliveryTextStyles.editProfileTexts,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text('Phone:9876543210',
                        style: FoodDeliveryTextStyles.editProfileTexts,),
                    SizedBox(
                      height: 1.h,
                    ),
                    SizedBox(
                      height: 4.h,
                      width: 40.w,
                      //  color: Colors.red,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'EDIT',
                              style: FoodDeliveryTextStyles.addressBookButtons,
                            ),
                            Text(
                              'DELETE',
                              style: FoodDeliveryTextStyles.addressBookButtons,
                            ),
                            Text(
                              'SHARE',
                              style: FoodDeliveryTextStyles.addressBookButtons,
                            ),
                          ],),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25.sp,
                right: 25.sp,
              ),
              child: SizedBox(
                height: 16.h,
                width: 85.w,
                // color: Colors.amber,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4.h,
                      width: 20.w,
                      //  color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/workLoc.png'),
                          Text(
                            'Work',
                            style: FoodDeliveryTextStyles.homeScreenTitles
                                .copyWith(fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Carnival infopark,phase 2,Infopark,Kochi',
                      style: FoodDeliveryTextStyles.editProfileTexts,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text('Phone:9876543210',
                        style: FoodDeliveryTextStyles.editProfileTexts,),
                    SizedBox(
                      height: 1.h,
                    ),
                    SizedBox(
                      height: 4.h,
                      width: 40.w,
                      // color: Colors.red,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'EDIT',
                              style: FoodDeliveryTextStyles.addressBookButtons,
                            ),
                            Text(
                              'DELETE',
                              style: FoodDeliveryTextStyles.addressBookButtons,
                            ),
                            Text(
                              'SHARE',
                              style: FoodDeliveryTextStyles.addressBookButtons,
                            ),
                          ],),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
            bottom: 40,
            left: 20,
            child: SizedBox(
              height: 6.5.h,
              width: 90.w,
              // color: Colors.red,
              child: signInSignUpButton(context, () {}, const Text('Add address')),
            ),)
      ],
    ),);
  }
}
