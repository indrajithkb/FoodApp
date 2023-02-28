import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:foodieapp/firebase/firebase_services.dart';

import 'package:sizer/sizer.dart';

import '../../../login/login.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  // int _currentIndex = 0;
  // final tabs=[

  //   Center(child: Text('Home' ),),
  //   Center(child: Text('dining'),),
  //   Center(child: Text('favorites'),),
  //   Center(child: Text('accounts'),),
  // ];

  final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 30.sp),
              child: SizedBox(
                //color: Colors.amber,
                height: 9.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                              "Carnival Infopark",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontFamily: 'SpaceGrotesk',
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF1A2C42),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF1A2C42),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Infopark campus,Kakanad,..",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: 'SpaceGrotesk',
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF696969),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 2.h),
                      child: Container(
                        height: 6.h,
                        width: 6.h,
                        decoration: const BoxDecoration(
                          color: Color(0xFF1D9F80),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Image.asset(
                            "assets/images/searchLoc.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/settings.png',
                      color: const Color(0xFF1A2C42),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            
            Container(
              color: Colors.amber,
              height: 24.h,
              child: Padding(
                padding: EdgeInsets.only(left: 15.sp),
                child: Row(
                  children: [
                    
                    Stack(
                      children: [
                        Container(
                          height: 22.h,
                          width: 78.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                         color:  const Color(0xFFE6556F),
                          ),

                        )
                      ],
                    )
                    // Stack(
                    //   children: [
                    //     Container(
                    //       height: 22.h,
                    //       width: 78.w,
                    //       decoration: BoxDecoration(
                    //           //color:  Color(0xFFE6556F),
                    //           borderRadius: BorderRadius.circular(25)),
                    //       child: Image.asset('assets/images/offerbg.png'),
                    //     ),
                    //     Positioned(
                    //         right: 15,
                    //         bottom: 20,
                    //         child: Image.asset('assets/images/kfc.png')),
                    //     Positioned(
                    //         left: 35,
                    //         top: 25,
                    //         child: Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Text(
                    //               "Wednesday ",
                    //               style:
                    //                   FoodDeliveryTextStyles.componentBoxStyle,
                    //             ),
                    //             Text(
                    //               "Buckets at ${FoodDeliveryConstantText.rupeesSymbol}350 ",
                    //               style:
                    //                   FoodDeliveryTextStyles.componentBoxStyle,
                    //             ),
                    //             SizedBox(
                    //               height: 1.h,
                    //             ),
                    //             RichText(
                    //               text: TextSpan(
                    //                   text: 'Enjoy',
                    //                   style: FoodDeliveryTextStyles
                    //                       .componentBoxSubtleStyle,
                    //                   children: [
                    //                     TextSpan(
                    //                       text: ' up to 55% OFF ',
                    //                       style: FoodDeliveryTextStyles
                    //                           .componentBoxSubtleBold,
                    //                     ),
                    //                   ]),
                    //             ),
                    //             RichText(
                    //               text: TextSpan(
                    //                   text: 'From',
                    //                   style: FoodDeliveryTextStyles
                    //                       .componentBoxSubtleStyle,
                    //                   children: [
                    //                     TextSpan(
                    //                       text: ' KFC',
                    //                       style: FoodDeliveryTextStyles
                    //                           .componentBoxSubtleBold,
                    //                     ),
                    //                   ]),
                    //             ),
                    //             SizedBox(height: 2.h,),
                    //             SizedBox(
                    //               height: 3.5.h,
                    //               width: 25.w,
                    //               child: ElevatedButton(
                    //                   onPressed: () {},
                    //                   style: ElevatedButton.styleFrom(
                    //                     backgroundColor: Colors.white,
                    //                     shape: RoundedRectangleBorder(
                    //                       borderRadius:
                    //                           BorderRadius.circular(10),
                    //                     ),
                                      
                    //                   ),
                    //                   child: Text("ORDER NOW",style: TextStyle(fontFamily: 'Poppins',fontSize: 11,color: Colors.black,fontWeight: FontWeight.w500,),maxLines: 1,)),
                    //             )
                    //           ],
                    //         ))
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
            ElevatedButton(onPressed: ()async{
              await FacebookAuth.instance.logOut();

              FirebaseServ().signOut() .then((value) {
                print("signout");
     Navigator.push(context, MaterialPageRoute(builder: (context) =>  ScreenLogin(),));
              });
         
            }, child: const Text("logout"))
          ],
        )
            // tabs[_currentIndex]
            ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF1D9F80),
        items: const [
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageIcon(AssetImage('assets/icons/homeIcon.png')),
              ),
              label: 'Home',
              backgroundColor: Color(0xFF1D9F80)),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageIcon(AssetImage('assets/icons/diningIcon.png')),
              ),
              label: 'Dining',
              backgroundColor: Color(0xFF1D9F80)),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageIcon(AssetImage('assets/icons/fav.png')),
              ),
              label: 'Favorites',
              backgroundColor: Color(0xFF1D9F80)),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageIcon(AssetImage('assets/icons/account.png')),
              ),
              label: 'Account',
              backgroundColor: Color(0xFF1D9F80)),
        ],
        onTap: (index) {
          // setState(() {
            //_currentIndex = index;
          // });
        },
      ),
    );
    
  }
  
}
