// ignore_for_file: prefer_final_fields, prefer_const_constructors_in_immutables, unused_field, prefer_const_constructors, lines_longer_than_80_chars, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieapp/homeScreen/bloc/bloc/api_home_bloc.dart';
import 'package:foodieapp/homeScreen/home_export.dart';
import 'package:foodieapp/homeScreen/view/widgets/accounts/account_tab.dart';
import 'package:foodieapp/homeScreen/view/widgets/dining_tab.dart';
import 'package:foodieapp/homeScreen/view/widgets/favorites_tab.dart';
import 'package:foodieapp/homeScreen/view/widgets/home/home_tab.dart';
import 'package:foodieapp/utils/image_assets.dart';

class ScreenHome extends StatefulWidget {
  ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  List<Widget> tabs = [
    HomeTab(),
    DiningTab(),
    FavoritesTab(),
    AccountTab()
  ];
@override
  void initState() {
     context.read<ApiHomeBloc>().add(FetchHomeData());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          //SafeArea(child: tabs[_currentIndex]),

          BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) {
          return SafeArea(child: tabs[state.currentIndex]);
        },
      ),
      bottomNavigationBar: BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xFF1D9F80),
            // unselectedItemColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8),
                  child: ImageIcon(AssetImage(ImageAssets.homeIcon)),
                ),
                label: 'Home',
                backgroundColor: Color(0xFF1D9F80),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8),
                  child: ImageIcon(AssetImage(ImageAssets.diningIcon)),
                ),
                label: 'Dining',
                backgroundColor: Color(0xFF1D9F80),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8),
                  child: ImageIcon(AssetImage(ImageAssets.favIcon)),
                ),
                label: 'Favorites',
                backgroundColor: Color(0xFF1D9F80),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8),
                  child: ImageIcon(AssetImage(ImageAssets.accountIcon)),
                ),
                label: 'Account',
                backgroundColor: Color(0xFF1D9F80),
              ),
            ],
            onTap: (index) {
              // context
              //     .read<HomeScreenBloc>()
              //     .add(NavBarChange(currentInd: index));
              BlocProvider.of<HomeScreenBloc>(context)
                  .add(NavBarChange(currentInd: index));
              // setState(() {
              //   _currentIndex = index;
              // });
            },
          );
        },
      ),
    );
  }
}
