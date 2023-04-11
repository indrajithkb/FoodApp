import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:foodieapp/homeScreen/repo/home_repo.dart';
import 'package:foodieapp/homeScreen/view/model/api_home_model.dart';

part 'api_home_event.dart';
part 'api_home_state.dart';

class ApiHomeBloc extends Bloc<ApiHomeEvent, ApiHomeState> {
  final ApiHomeRepo apiHomeRepo;
  ApiHomeBloc({required this.apiHomeRepo}) : super(ApiHomeLoading()) {
    on<FetchHomeData>((event, emit)async {
      // emit(ApiHomeLoading());
       await Future.delayed(Duration(microseconds:1));
      try {
     final result=await apiHomeRepo.apiHomeInn();
     emit(ApiHomeLoaded(result));
   } catch (e) {
   throw Exception(e);
    //  print(e.toString());
   }
     
    });

   
  }
}
