// ignore_for_file: inference_failure_on_instance_creation

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodieapp/homeScreen/view/model/api_home_model.dart';
import 'package:foodieapp/homeScreen/view/screens/screen_home.dart';
import 'package:foodieapp/utils/constants.dart';
import 'package:sizer/sizer.dart';

class TopBarRestaurants extends StatelessWidget {
  TopBarRestaurants({required this.userDatas, required this.index, super.key});
  List<XploreResto> userDatas;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 27.sp),
        child: Stack(
          children: [
            SizedBox(
              // color: Colors.black54,
              height: 15.h,
              width: double.infinity,
              child: Image.network(
                userDatas[index].image,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 20,
              bottom: 32,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenHome(),
                      ));
                },
                child: Container(
                  height: 5.h,
                  width: 5.h,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Image.asset(
                      'assets/images/backButton.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 32,
              child: Container(
                height: 5.h,
                width: 5.h,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.50),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Image.asset(
                    'assets/images/settings.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 70,
              bottom: 32,
              child: Container(
                height: 5.h,
                width: 18.h,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.45),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: 'Search menu',
                    hintStyle: FoodDeliveryTextStyles.editProfileTexts.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(bottom: 8.sp, top: 8.sp),
                      child: Image.asset(
                        'assets/images/searchLoc.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(bottom: 8.sp, top: 8.sp),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
