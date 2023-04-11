// ignore_for_file: sort_constructors_first

part of 'home_screen_bloc.dart';

class HomeScreenState {
int? activeIndex;
  int currentIndex;
 
  
  HomeScreenState({required this.currentIndex,this.activeIndex,});
}

class HomeScreenInitial extends HomeScreenState {
  HomeScreenInitial() : super(currentIndex: 0,activeIndex: 0,);
}
