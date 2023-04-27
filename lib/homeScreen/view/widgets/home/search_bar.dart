// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodieapp/homeScreen/view/model/api_home_model.dart';
import 'package:foodieapp/homeScreen/view/widgets/home/bottom_home_components.dart';
import 'package:foodieapp/homeScreen/view/widgets/home/center_home_components.dart';
import 'package:foodieapp/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class SearchBar extends StatefulWidget {
  SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  List<FoodBanner> filterFood = [];
  List<String> recentSearch = [];
  List<String> getRecentItems = [];

  final TextEditingController searchItemController = TextEditingController();
  @override
  void initState() {
    filterFood = foodList;

     getRecent();

    super.initState();
  }

  Future<List<String>> getRecent() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final List<String> getRecentItems =await prefs.getStringList('searchKey')!;
  
    return getRecentItems;
  }

  void filterFoodSearch(String query) {
    List<FoodBanner> filterFoodresult = [];
    if (query.isEmpty) {
      filterFoodresult = foodList;
    } else {
      filterFoodresult = foodList
          .where((e) => e.foodname.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    setState(() {
      filterFood = filterFoodresult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.sp, right: 2.sp, top: 58.sp),
            child: SizedBox(
              height: 8.h,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 25,
                    ),
                  ),
                  Text(
                    FoodDeliveryConstantText.searchNote,
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
              left: 15.sp,
            ),
            child: SizedBox(
              height: 5.h,
              width: 90.w,
              child: RawKeyboardListener(
                focusNode: FocusNode(),
                onKey: (RawKeyEvent event) async {
                  if (event.logicalKey == LogicalKeyboardKey.enter) {
                    final SharedPreferences prefs =
                        await SharedPreferences.getInstance();

                    setState(() {
                      if(searchItemController.text.isEmpty){
                        return null;
                      }else{
                        recentSearch.add(searchItemController.text);
                      prefs.setStringList('searchKey', recentSearch);
                      }
                   
                      //  print( prefs.getStringList('searchKey'));
                    });
                  }
                },
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  controller: searchItemController,
                  onChanged: filterFoodSearch,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: FoodDeliveryColor.buttonColor),
                    ),
                    hintText: 'Search',
                    hintStyle: FoodDeliveryTextStyles.editProfileTexts,
                    contentPadding: EdgeInsets.only(bottom: 2.sp),
                    prefixIcon: Image.asset(
                      'assets/images/3.0x/searchLoc.png',
                      color: FoodDeliveryColor.buttonColor,
                      scale: 2.5,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.sp, top: 15.sp),
            child: Text(
              'Popular dishes',
              style: FoodDeliveryTextStyles.homeScreenTitles
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemCount: filterFood.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: 15.sp, top: 10.sp),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(filterFood[index].image),
                    ),
                    Text(
                      filterFood[index].foodname,
                      style: FoodDeliveryTextStyles.editProfileTexts,
                    )
                  ],
                ),
              );
            },
          )),
          Padding(
            padding: EdgeInsets.only(left: 15.sp, top: 15.sp),
            child: Text(
              'Recent search',
              style: FoodDeliveryTextStyles.homeScreenTitles
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
              flex: 4,
              child: FutureBuilder(
                future: getRecent(),
                builder: (context, snapshot) {
                  // if(snapshot.data!.isEmpty){
                  //   print('object');
                  // }
                    print(snapshot.data);
                  if (snapshot.hasData &&
            !snapshot.hasError ){
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                         print(snapshot.data! .length);

                        return Padding(
                          padding: EdgeInsets.only(left: 15.sp, top: 10.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.alarm_outlined,
                                    color: const Color(0xFF696969),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10.sp,
                                    ),
                                    child: Text(
                                      snapshot.data![index],
                                      style: FoodDeliveryTextStyles
                                          .editProfileTexts
                                          .copyWith(fontSize: 13.sp),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ))
        ],
      ),
    );
  }
}
