// ignore_for_file: lines_longer_than_80_chars
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:foodieapp/demo_signUp/demo_repo.dart';
// import 'package:get/get.dart';
// part 'demo_api_sign_up_event.dart';
// part 'demo_api_sign_up_state.dart';

// class DemoApiSignUpBloc extends Bloc<DemoApiSignUpEvent, DemoApiSignUpState> {
//   DemoApiRepo demoApiRepo;
//   DemoApiSignUpBloc({required this.demoApiRepo})
//       : super(DemoApiSignUpInitial()) {
//     on<PostData>((event, emit) async {
//       emit(DemoApiLoading());
//       await Future.delayed(Duration(seconds: 1));
//       try {
//         await demoApiRepo
//             .demoSignUp(
//                 email: event.email,
//                 password: event.password,
//                 username: event.userName)
//             .then((value) {
//           emit(DemoApiLoaded());
//         });
//       } catch (e) {
//         emit(DemoApiError(e.toString()));
//       }
//     });
//   }
// }
