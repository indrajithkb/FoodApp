import 'package:flutter/material.dart';

class FoodModel{
  String? imgg;
  String? foodName;
  FoodModel({required this.imgg,required this.foodName});

}

List<FoodModel>foodModelList=[
  FoodModel(imgg: 'assets/images/food1.png', foodName: 'Biriyani'),
  FoodModel(imgg: 'assets/images/food2.png', foodName: 'Porotta'),
  FoodModel(imgg: 'assets/images/food3.png', foodName: 'Chapathy'),
  FoodModel(imgg: 'assets/images/food1.png', foodName: 'Dosa'),
  FoodModel(imgg: 'assets/images/food2.png', foodName: 'Idli'),
  FoodModel(imgg: 'assets/images/food3.png', foodName: 'Poori'),
  FoodModel(imgg: 'assets/images/food1.png', foodName: 'Idiyapam'),

];


class AccountNavBar{
  String? accountDetails;
  final ImageIcon icon;
  AccountNavBar({required this.accountDetails,required this.icon});
  

}
List<AccountNavBar>accountNavBarList=[
  AccountNavBar(accountDetails: "Your orders", icon:ImageIcon(AssetImage('assets/images/yourOrders.png'),)),
    AccountNavBar(accountDetails: "Address book", icon:ImageIcon(AssetImage('assets/images/addressBook.png'),)),
      AccountNavBar(accountDetails: "Your transactions", icon:ImageIcon(AssetImage('assets/images/yourTrans.png'),)),
        AccountNavBar(accountDetails: "Table reservations", icon:ImageIcon(AssetImage('assets/images/tableReserve.png'),)),
          AccountNavBar(accountDetails: "Notifications", icon:ImageIcon(AssetImage('assets/images/notification.png'),)),
            AccountNavBar(accountDetails: "Help", icon:ImageIcon(AssetImage('assets/images/help.png'),)),
];