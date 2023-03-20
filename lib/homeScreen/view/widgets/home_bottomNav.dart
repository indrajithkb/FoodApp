

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieapp/homeScreen/bloc/demo_user_bloc.dart';

import 'package:foodieapp/homeScreen/view/model/demo_model.dart';
import 'package:foodieapp/homeScreen/view/screens/dailySpecial.dart';

import 'package:foodieapp/homeScreen/view/widgets/top_bar.dart';


import 'package:foodieapp/utils/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeBottomNav extends StatefulWidget {
  const HomeBottomNav({super.key});

  @override
  State<HomeBottomNav> createState() => _HomeBottomNavState();
}

class _HomeBottomNavState extends State<HomeBottomNav> {
  int activeIndex = 0;
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  final ref = FirebaseDatabase.instance.ref('post/-NQyXi099IQRk4xAvC8d');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 2.sp, right: 2.sp, top: 20.sp),
          child: SizedBox(
            height: 9.h,
            child: const TopBar(),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),

        Column(
          children: [
            Container(
              height: 20.5.h,
              width: 90.w,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                //  color: Colors.redAccent,
              ),
              child: PageView.builder(
                controller: PageController(viewportFraction: .95),
                onPageChanged: (index) {
                  //context.read<HomeScreenBloc>().add(SliderChange(indx: index));
                  setState(() {
                    activeIndex = index;
                  });
                },
                scrollDirection: Axis.horizontal,
                itemCount: imgList.length,
                itemBuilder: (context, index) {
                  final img = imgList[index];
                  return Padding(
                    padding: EdgeInsets.only(right: 15.sp),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        img,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: imgList.length,
              effect: const WormEffect(
                // radius:  4.0,
                dotWidth: 8,
                dotHeight: 9,
                paintStyle: PaintingStyle.stroke,
                //strokeWidth:  1.5,
                //dotColor: Colors.grey,
                activeDotColor: Colors.black,
              ),
            )
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 22.sp),
                  child: Text('Whats on your mind?',
                      style: FoodDeliveryTextStyles.homeScreenTitles,),
                )
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.sp),
              child: SizedBox(
                //color: Colors.amber,
                height: 12.h,
                width: double.infinity,
                child: BlocBuilder<DemoUserBloc, DemoUserState>(
                  builder: (context, state) {
                    if (state is DemoUserLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state is DemoUserLoaded) {
                       DemoModel userr = state.user;
                      // print(userr.demosub.length);
                      return 
                       StreamBuilder(
                        stream: ref.onValue,
                        builder: (context, snapshot) {
                          if (snapshot.hasData &&
                              !snapshot.hasError &&
                              snapshot.data!.snapshot.value != null) {
                            
                            var snap = snapshot.data!.snapshot.value as   List<Object?>;
                var snapData=snap.map((e) {
                   return FoodSpecial.fromRTDB(e);
                }).toList();
                // print(snapData[0].foodname);
              // print(snapshot.data!.snapshot.value);
              // List<dynamic> list = [];
              // list.clear();

              // list = snap;
              // print(list[0]["foodname"]);

        
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:snapData.length,
                                  // snapshot.data!.snapshot.children.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.sp),
                                      child: CircleAvatar(
                                        radius: 35,
                                        backgroundImage: NetworkImage(
                                          snapData[index].image,
                                          // list[index]["image"].toString()
                                            // userr.demosub[index].image
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.sp),
                                      child: Text(
                                        snapData[index].foodname,
                                        // list[index]["foodname"].toString(),
                                        // userr.demosub[index].foodname,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'SpaceGrotesk',
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF696969),
                                          ),),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),);
                          }
                        },
                      );



                      //  return ListView.builder(
                      //         scrollDirection: Axis.horizontal,
                      //         itemCount:userr.nQ8c9ItMdKP94bJ8GKG!.length,
                      //         // userr.demosub.length,
                      //         //snapData.length,
                      //             // snapshot.data!.snapshot.children.length,
                      //         itemBuilder: (context, index) {
                      //           return Column(
                      //             mainAxisAlignment:
                      //                 MainAxisAlignment.spaceEvenly,
                      //             children: [
                      //               Padding(
                      //                 padding: EdgeInsets.only(left: 5.sp),
                      //                 child: CircleAvatar(
                      //                   radius: 35,
                      //                    backgroundImage: NetworkImage(
                      //                   //   // snapData[index].image
                      //                   //   // list[index]["image"].toString()
                      //                   //     // userr.demosub[index].image
                      //                    userr.nQ8c9ItMdKP94bJ8GKG![index].image!
                      //                       ),
                      //                 ),
                      //               ),
                      //               Padding(
                      //                 padding: EdgeInsets.only(left: 5.sp),
                      //                 child: Text(
                      //                   userr.nQ8c9ItMdKP94bJ8GKG![index].foodname!,
                      //                   // snapData[index].foodname,
                      //                   // list[index]["foodname"].toString(),
                      //                   // userr.demosub[index].foodname,
                      //                     style: const TextStyle(
                      //                       fontSize: 12,
                      //                       fontFamily: 'SpaceGrotesk',
                      //                       fontWeight: FontWeight.w600,
                      //                       color: Color(0xFF696969),
                      //                     )),
                      //               ),
                      //             ],
                      //           );
                      //         },
                      //       );

                
                    }
                    return Container();
                  },
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 22.sp),
                      child: Text(
                        '387 restaurants to explore',
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
                    itemCount: imgList.length,
                    itemBuilder: (context, index) {
                      final img = imgList[index];
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
                                Container(
                                  //height: 100,

                                  decoration: const BoxDecoration(

                                      //color: Colors.amber,
                                      //borderRadius: BorderRadius.circular(25)
                                      ),

                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.network(
                                      img,
                                      height: 13.h,
                                      width: 87.w,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.sp, right: 5.sp, top: 5.sp,),
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
                                          const Text('Chakarapanthal'),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5.sp),
                                            child: const Text('Kochi -5km'),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 1.5.sp, bottom: 2.sp,),
                                            child: Image.asset(
                                                'assets/images/deliveryBike.png',),
                                          ),
                                          const Text('30 min')
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
                                gradient: const LinearGradient(
                                  colors: [
                                    Colors.transparent,
                                    Colors.black87,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: [0, 0.9],
                                ),
                                //color: Colors.amber,
                                //borderRadius: BorderRadius.circular(25)
                              ),
                            ),
                            const Positioned(
                              bottom: 70,
                              left: 20,
                              child: Text(
                                '10%off',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'SpaceGrotesk',
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 55,
                              left: 20,
                              child: Text(
                                'upto ${FoodDeliveryConstantText.rupeesSymbol} 125',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'SpaceGrotesk',
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF),
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
                                  ),),
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
                                        backgroundColor:
                                            const Color(0xFFE6556F),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 2.sp),
                                            child: const Icon(
                                              Icons.star,
                                              size: 14,
                                            ),
                                          ),
                                          const Text(
                                            '4.5',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'SpaceGrotesk',
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                            // maxLines: 1,
                                          ),
                                        ],
                                      ),),
                                ),)
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          ],
        )

        //  , ElevatedButton(
        //       onPressed: () async {
        //         //await FacebookAuth.instance.logOut();

        //         FirebaseServ().signOut().then((value) {
        //           print("signout");
        //           Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => ScreenLogin(),
        //               ));
        //         });
        //       },
        //       child: const Text("logout"))
      ],
    ),);
  }
}
