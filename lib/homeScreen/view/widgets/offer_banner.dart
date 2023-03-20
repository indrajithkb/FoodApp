import 'package:flutter/material.dart';
import 'package:foodieapp/utils/constants.dart';
import 'package:sizer/sizer.dart';

class OfferBanner extends StatelessWidget {
  OfferBanner({super.key,});

  @override
  Widget build(BuildContext context) {
    return  Stack(
              children: [
                Container(
                  height: 22.h,
                  width: 78.w,
                  decoration: BoxDecoration(
                      //color:  Color(0xFFE6556F),
                      borderRadius: BorderRadius.circular(25),),
                  child: Image.asset('assets/images/offerbg.png',),
                ),
                Positioned(
                    right: 10,
                    bottom: 20,
                    child: Image.asset('assets/images/kfc.png'),),
                Positioned(
                    left: 30,
                    top: 25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wednesday ',
                          style:
                              FoodDeliveryTextStyles.componentBoxStyle,
                        ),
                        Text(
                          'Buckets at ${FoodDeliveryConstantText.rupeesSymbol}350 ',
                          style:
                              FoodDeliveryTextStyles.componentBoxStyle,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Enjoy',
                              style: FoodDeliveryTextStyles
                                  .componentBoxSubtleStyle,
                              children: [
                                TextSpan(
                                  text: ' up to 55% OFF ',
                                  style: FoodDeliveryTextStyles
                                      .componentBoxSubtleBold,
                                ),
                              ],),
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'From',
                              style: FoodDeliveryTextStyles
                                  .componentBoxSubtleStyle,
                              children: [
                                TextSpan(
                                  text: ' KFC',
                                  style: FoodDeliveryTextStyles
                                      .componentBoxSubtleBold,
                                ),
                              ],),
                        ),
                        SizedBox(height: 1.5.h,),
                        SizedBox(
                          height: 3.5.h,
                          width: 26.w,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(10),
                                ),

                              ),
                              child: const Text('ORDER NOW',
                              style: TextStyle(fontFamily: 'Poppins',
                              fontSize: 11.5,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,),
                              maxLines: 1,),),
                        )
                      ],
                    ),)
              ],
            );
  }
}
