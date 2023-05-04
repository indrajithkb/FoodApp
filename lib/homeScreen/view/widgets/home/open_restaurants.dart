// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieapp/homeScreen/bloc/home_screen_bloc.dart';
import 'package:foodieapp/homeScreen/view/model/api_home_model.dart';
import 'package:foodieapp/homeScreen/view/widgets/home/OpenSelectedRest_widgets/hotel_details.dart';
import 'package:foodieapp/homeScreen/view/widgets/home/OpenSelectedRest_widgets/offer_box.dart';
import 'package:foodieapp/homeScreen/view/widgets/home/OpenSelectedRest_widgets/switch_buttons.dart';
import 'package:foodieapp/homeScreen/view/widgets/home/top_bar_restaurants.dart';
import 'package:foodieapp/utils/constants.dart';
import 'package:sizer/sizer.dart';

class OpenSelectedRestaurant extends StatelessWidget {
  OpenSelectedRestaurant(
      {required this.userDatas, required this.index, super.key});
  List<XploreResto> userDatas;
  int index;
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBarRestaurants(
              userDatas: userDatas,
              index: index,
              searchController: _searchController,
              onChanged: (value) {
                // filterSearchResults(value);
              },
            ),
            SizedBox(
              height: 2.5.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.h, right: 3.h),
              child: Column(
                children: [
                  HotelDetails(
                    userDatas: userDatas,
                    index: index,
                  ),
                  const OfferBox(),
                 const SwitchVegNon(),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
