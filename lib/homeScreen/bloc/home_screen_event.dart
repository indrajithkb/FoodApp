// ignore_for_file: sort_constructors_first

part of 'home_screen_bloc.dart';

@immutable
abstract class HomeScreenEvent {}

class NavBarChange extends HomeScreenEvent {
  final int currentInd;
  NavBarChange({required this.currentInd});
}

class PageChange extends HomeScreenEvent{
  final int idx;
  PageChange({required this.idx});
}

// class SelectGender extends HomeScreenEvent{
//   final String selectedGender;
//   SelectGender({required this.selectedGender});
// }
