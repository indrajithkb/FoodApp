
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieapp/homeScreen/home_export.dart';
import 'package:foodieapp/homeScreen/view/widgets/account.dart';
import 'package:foodieapp/homeScreen/view/widgets/dining_bottomNav.dart';
import 'package:foodieapp/homeScreen/view/widgets/favorites.dart';
import 'package:foodieapp/homeScreen/view/widgets/home_bottomNav.dart';


class ScreenHome extends StatefulWidget {
   ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _currentIndex = 0;
  List<Widget> tabs = [
    HomeBottomNav(),
    DiningBottomNav(),
    FavResto(),
    Account()
  ];


  final List<String> imgList = [
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

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
                    child: ImageIcon(AssetImage('assets/icons/homeIcon.png')),
                  ),
                  label: 'Home',
                  backgroundColor: Color(0xFF1D9F80),),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.all(8),
                    child: ImageIcon(AssetImage('assets/icons/diningIcon.png')),
                  ),
                  label: 'Dining',
                  backgroundColor: Color(0xFF1D9F80),),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.all(8),
                    child: ImageIcon(AssetImage('assets/icons/fav.png')),
                  ),
                  label: 'Favorites',
                  backgroundColor: Color(0xFF1D9F80),),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.all(8),
                    child: ImageIcon(AssetImage('assets/icons/account.png')),
                  ),
                  label: 'Account',
                  backgroundColor: Color(0xFF1D9F80),),
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
