import 'package:flutter/material.dart';
import 'package:foodieapp/homeScreen/view/model/food_model.dart';
import 'package:sizer/sizer.dart';

class Account extends StatelessWidget {
   Account({super.key});
List<String>accList=[
  'Your orders',
  'Address book',
  'Your transactions',
  'Table reservations',
  'Notification',
  'Help'
];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.sp, right: 2.sp, top: 20.sp),
            child: SizedBox(
              height: 9.h,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 12.sp,
                  right: 15.sp,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/propic.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.sp,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'KIM JONG-UN',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'SpaceGrotesk',
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1A2C42),
                                ),
                              ),
                              Text(
                                'kimjongun@gmail.com',  style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'SpaceGrotesk',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF1A2C42),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/editIcon.png'),)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Container(
            // height: 130,
            height: 15.5.h,

            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF1D9F80),
            ),child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      child:  ImageIcon(AssetImage('assets/icons/fav.png'),color: Color(0xFF1D9F80),),

                    ),
                    Padding(
                       padding: EdgeInsets.only(top: 5.sp),
                      child: const Text('Liked'),
                    )
                  ],
                ),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                        radius: 35,
                         backgroundColor: Colors.white,
                         child:  ImageIcon(AssetImage('assets/images/favResto.png'),color: Color(0xFF1D9F80)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.sp),
                      child: const Text('Fav restaurants'),
                    )
                  ],
                ),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                         radius: 35,
                          backgroundColor: Colors.white,
                          child:  ImageIcon(AssetImage('assets/images/settingsIcon.png'),color: Color(0xFF1D9F80)),
                         
                    ),
                    Padding(
                         padding: EdgeInsets.only(top: 5.sp),
                      child: const Text('Settings'),
                    )
                  ],
                )
                
              ],
            ),
          ),SizedBox(height: 2.h,),
          SizedBox(
            height: 45.h,
            // color: Colors.amber,
            child:ListView.builder(
              itemCount: accountNavBarList.length,
              itemBuilder: (context, index) {
                final accTitles=accountNavBarList[index];
              return ListTile(
                leading: accTitles.icon,
                title:Text(accTitles.accountDetails!,  style: const TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'SpaceGrotesk',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF1A2C42),
                                ),) ,
                                trailing: IconButton(onPressed: (){

                                }, icon: const ImageIcon(AssetImage('assets/images/trailing.png'),),),
              );
            },) ,
          )
        ],
      ),
    );
  }
}
