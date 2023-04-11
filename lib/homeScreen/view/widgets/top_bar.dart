// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:foodieapp/utils/constants.dart';
import 'package:foodieapp/utils/sharedpref.dart';
import 'package:sizer/sizer.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('assets/images/location.png'),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Carnival Infopark',
                  style: FoodDeliveryTextStyles.homeScreenTitles.copyWith(
                    fontSize: 13.sp,
                    color: const Color(0xFF1A2C42),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Color(0xFF1A2C42),
                  ),
                )
              ],
            ),
            Text(
              'Infopark campus,Kakanad,..',
              style: FoodDeliveryTextStyles.homeScreenTitles.copyWith(
                fontSize: 10.sp,
                color: const Color(0xFF696969),
              ),
            )
          ],
        ),
        InkWell(
          onTap: (){
            clearToken(context: context);
          },
          child: Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Container(
              height: 6.h,
              width: 6.h,
              decoration: const BoxDecoration(
                color: Color(0xFF1D9F80),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Image.asset(
                  'assets/images/searchLoc.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        Image.asset(
          'assets/images/settings.png',
          color: const Color(0xFF1A2C42),
        )
      ],
    );
  }
}
