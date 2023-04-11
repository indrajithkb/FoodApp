// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:foodieapp/demo_home/demo_home_repo.dart';
// import 'package:foodieapp/demo_home/demo_model_home.dart';

// part 'demo_api_home_event.dart';
// part 'demo_api_home_state.dart';

// class DemoApiHomeBloc extends Bloc<DemoApiHomeEvent, DemoApiHomeState> {
//   final DemoApiHomeRepo demoApiHomeRepo;
//   DemoApiHomeBloc(this.demoApiHomeRepo) : super(DemoApiHomeLoading()) {
//     on<FetchHomeData>((event, emit) async{
//       // emit(DemoApiHomeLoading());

//    try {
//      final result=await demoApiHomeRepo.demoHomeInn();
//      emit(DemoApiHomeLoaded(result));
//    } catch (e) {
//      print(e.toString());
//    }
//     });
//   }
// }
