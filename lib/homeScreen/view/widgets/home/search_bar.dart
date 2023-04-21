import 'package:flutter/material.dart';
import 'package:foodieapp/utils/constants.dart';
import 'package:sizer/sizer.dart';

class SearchBar extends StatelessWidget {
 SearchBar({super.key});
final TextEditingController searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            Padding(
              padding: EdgeInsets.only(left: 10.sp, right: 2.sp, top: 58.sp),
              child: SizedBox(
                // color: Colors.amber,
                height: 8.h,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close,size: 25,),
                    ),
                    Text(
                      FoodDeliveryConstantText.searchNote,
                      style: FoodDeliveryTextStyles.homeScreenTitles,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            SizedBox(
              height: 5.h,
              width: 90.w,
              child: TextFormField(
                decoration: InputDecoration(
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
        
      ),
      
      focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide( color: FoodDeliveryColor.buttonColor),
      ),
                  hintText: 'Search',
                  hintStyle: FoodDeliveryTextStyles.editProfileTexts,
                 contentPadding: EdgeInsets.only(bottom: 2.sp),
                  prefixIcon: Image.asset('assets/images/3.0x/searchLoc.png',
                  color: FoodDeliveryColor.buttonColor ,
                  
                  scale: 2.5,
                  ),

                 
                ),
            
              ),
            )
        ],
      ),
    );
  }
}
