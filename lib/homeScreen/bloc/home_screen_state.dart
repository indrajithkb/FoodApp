part of 'home_screen_bloc.dart';

class HomeScreenState {
// int activeIndex;
  int currentIndex;
  HomeScreenState({required this.currentIndex});
}

class HomeScreenInitial extends HomeScreenState {
  HomeScreenInitial() : super(currentIndex: 0);
}
