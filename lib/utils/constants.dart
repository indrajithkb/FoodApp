import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

//textStyles
class FoodDeliveryTextStyles {
  static TextStyle headingStyle = TextStyle(
      fontFamily: 'SpaceGrotesk', fontSize: 18.sp, fontWeight: FontWeight.w600,);

  static TextStyle textFieldStyle = TextStyle(
      color: const Color(0xFF696969),
      fontSize: 11.sp,
      
      fontFamily: 'SpaceGrotesk',
      fontWeight: FontWeight.w600,);

  static TextStyle buttonTextStyle = TextStyle(
      fontFamily: 'SpaceGrotesk', fontWeight: FontWeight.w600, fontSize: 12.sp,);

  static TextStyle componentBoxStyle = const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',);

      static TextStyle componentBoxSubtleStyle = const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          fontFamily: 'QuickSand',);
           static TextStyle componentBoxSubtleBold=const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 13,
                                              fontFamily: 'QuickSand',);   
            static   TextStyle homeScreenTitles=  const TextStyle(
                        fontSize: 16,
                        fontFamily: 'SpaceGrotesk',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A2C42),
                      ) ;  

                      static   TextStyle homeScreenTitlesMustTry=  const TextStyle(
                        fontSize: 16,
                        fontFamily: 'SpaceGrotesk',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF1A2C42),
                      ) ;    
                      
                      static   TextStyle homeScreenTitlesMustTryPlace=  const TextStyle(
                        fontSize: 14,
                        fontFamily: 'SpaceGrotesk',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF1A2C42),
                      ) ;                                         
}

//colors
class FoodDeliveryColor {
  static Color buttonColor = const Color(0xFF1D9F80);
}

// constantTexts
class FoodDeliveryConstantText {
  static String titleText = 'Sign In';
  static String titleSignUpText = 'Sign Up';
  static String rupeesSymbol = '\u{20B9}';
}
