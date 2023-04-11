// ignore_for_file: inference_failure_on_instance_creation, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:foodieapp/homeScreen/view/screens/screen_home.dart';
import 'package:foodieapp/utils/constants.dart';
import 'package:sizer/sizer.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isEnableAllSwitch = false;
  bool isPromoPush=false;
  bool isPromoWhatsapp=false;
  bool isSocialPush=false;
  bool isOrdersPush=false;
  bool isOrdersWhatsapp=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                  FoodDeliveryConstantText.notifications,
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
            left: 20.sp,
            right: 20.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Enable all',
                    style: FoodDeliveryTextStyles.homeScreenTitles
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  //switch button
                  // Text('switch')
                  Switch(
                    value: isEnableAllSwitch,
                    activeColor: const Color(0xFF1D9F80),
                    onChanged: (value) {
                      setState(() {
                       isEnableAllSwitch = !isEnableAllSwitch;
                      });
                    },
                  )
                ],
              ),
              // SizedBox(
              //   height: 1.h,
              // ),
              Text(
                'Active all notifications',
                style: FoodDeliveryTextStyles.editProfileTexts,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Promo and offers',
                style: FoodDeliveryTextStyles.homeScreenTitles
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'Receive updates about coupons,promotions and money saving offers',
                style: FoodDeliveryTextStyles.editProfileTexts,
              ),
              // SizedBox(
              //   height: 2.h,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 4.h,
                    width: 16.w,
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/push.png'),
                        Text(
                          'Push',
                          style: FoodDeliveryTextStyles.editProfileTexts
                              .copyWith(
                                  fontSize: 15, fontWeight: FontWeight.w600,),
                        )
                      ],
                    ),
                  ),
                  //switch button
                  Switch(
                    value: isPromoPush,
                    activeColor: const Color(0xFF1D9F80),
                    onChanged: (value) {
                      setState(() {
                        isPromoPush = !isPromoPush;
                      });
                    },
                  )
                ],
              ),
              // SizedBox(
              //   height: 1.h,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 4.h,
                    width: 26.w,
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/whatsapp.png'),
                        Text(
                          'Whatsapp',
                          style: FoodDeliveryTextStyles.editProfileTexts
                              .copyWith(
                                  fontSize: 15, fontWeight: FontWeight.w600,),
                        )
                      ],
                    ),
                  ),
                  //switch button
                  Switch(
                    value: isPromoWhatsapp,
                    activeColor: const Color(0xFF1D9F80),
                    onChanged: (value) {
                      setState(() {
                        isPromoWhatsapp = !isPromoWhatsapp;
                      });
                    },
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Social notifications',
                style: FoodDeliveryTextStyles.homeScreenTitles
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'Get notified when someone follows your profile or when you get likes and comments on reviews and photos posted by you',
                style: FoodDeliveryTextStyles.editProfileTexts,
              ),
              // SizedBox(
              //   height: 2.h,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 4.h,
                    width: 16.w,
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/push.png'),
                        Text(
                          'Push',
                          style: FoodDeliveryTextStyles.editProfileTexts
                              .copyWith(
                                  fontSize: 15, fontWeight: FontWeight.w600,),
                        )
                      ],
                    ),
                  ),
                  //switch button
                  Switch(
                    value: isSocialPush,
                    activeColor: const Color(0xFF1D9F80),
                    onChanged: (value) {
                      setState(() {
                       isSocialPush = !isSocialPush;
                      });
                    },
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Orders and purchases',
                style: FoodDeliveryTextStyles.homeScreenTitles
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                '''
Receive updates related to your status,
membership,table booking and more''',
                style: FoodDeliveryTextStyles.editProfileTexts,
              ),
              // SizedBox(
              //   height: 2.h,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 4.h,
                    width: 16.w,
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/push.png'),
                        Text(
                          'Push',
                          style: FoodDeliveryTextStyles.editProfileTexts
                              .copyWith(
                                  fontSize: 15, fontWeight: FontWeight.w600,),
                        )
                      ],
                    ),
                  ),
                  //switch button
                  Switch(
                    value: isOrdersPush,
                    activeColor: const Color(0xFF1D9F80),
                    onChanged: (value) {
                      setState(() {
                        isOrdersPush = !isOrdersPush;
                      });
                    },
                  )
                ],
              ),
              // SizedBox(
              //   height: 1.h,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 4.h,
                    width: 26.w,
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/whatsapp.png'),
                        Text(
                          'Whatsapp',
                          style: FoodDeliveryTextStyles.editProfileTexts
                              .copyWith(
                                  fontSize: 15, fontWeight: FontWeight.w600,),
                        )
                      ],
                    ),
                  ),
                  //switch button
                  Switch(
                    value: isOrdersWhatsapp,
                    activeColor: const Color(0xFF1D9F80),
                    onChanged: (value) {
                      setState(() {
                        isOrdersWhatsapp = !isOrdersWhatsapp;
                      });
                    },
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),);
  }
}
