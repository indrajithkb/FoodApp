part of 'home_screen_bloc.dart';

@immutable
abstract class HomeScreenEvent {}


class NavBarChange extends HomeScreenEvent{
  final int currentInd;
  NavBarChange({required this.currentInd});
}