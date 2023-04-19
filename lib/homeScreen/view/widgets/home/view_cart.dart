import 'package:flutter/material.dart';
import 'package:foodieapp/homeScreen/view/model/cart_model.dart';
import 'package:sizer/sizer.dart';

class ViewCart extends StatelessWidget {
   ViewCart({required this.viewCartDatas, super.key});
Map<String, CartModel>viewCartDatas;

  @override
  Widget build(BuildContext context) {
List <CartModel>cartDataList=viewCartDatas.values.toList();
    return Scaffold(
      body: SizedBox(height: 50.h,
      child: ListView.builder(
        itemCount: cartDataList.length,
        itemBuilder: (context, index) {
        return ListTile(

          title:Text(cartDataList[index].dishName) ,
          subtitle: Text(cartDataList[index].price.toString()),
        );
      },),
      ),
    );
  }
}
