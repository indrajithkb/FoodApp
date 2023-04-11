// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:foodieapp/demo_login/demo_login_repo.dart';
// part 'demo_api_login_event.dart';
// part 'demo_api_login_state.dart';

// class DemoApiLoginBloc extends Bloc<DemoApiLoginEvent, DemoApiLoginState> {
//   DemoApiLoginRepo demoApiLoginRepo;
//   DemoApiLoginBloc({required this.demoApiLoginRepo})
//       : super(DemoApiLoginInitial()) {
//     on<LoginData>((event, emit) async {
//       emit(DemoApiLoginLoading());

//       await Future.delayed(Duration(microseconds: 1));
//       try {
//         await demoApiLoginRepo
//             .demoLogin(
//                 email: event.email,
//                 password: event.password,
//                 context: event.ctx)
//             .then((value) {
//           emit(DemoApiLoginLoaded( ));
//         });
//       } catch (e) {
//         emit(DemoApiLoginError(e.toString()));
//       }

//      
//     });
//    on<ViewPassword>((event, emit) {
// final bool onAct = state.onActive;
// print("showpasswd");
// emit(DemoApiLoginState(onActive: !onAct));
//    });
//   }
// }
