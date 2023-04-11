// ignore_for_file: depend_on_referenced_packages, lines_longer_than_80_chars

import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenInitial()) {
    on<NavBarChange>(
      (event, emit) {
        return emit(HomeScreenState(currentIndex: event.currentInd));
      },
    );

    on<PageChange>((event, emit) {
      return emit(HomeScreenState(currentIndex: state.currentIndex,activeIndex: event.idx));
    },);

    // on<SelectGender>((event, emit) {
    //   return emit(HomeScreenState(currentIndex:state.currentIndex,activeIndex: state.activeIndex,dropdownvalue: event.selectedGender));

    // });
  }
}
