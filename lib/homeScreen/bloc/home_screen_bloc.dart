import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenInitial()) {
 
   on<NavBarChange>((event, emit) {

      return emit(HomeScreenState(currentIndex: event.currentInd));

   },);
  
  }
     
  
}
