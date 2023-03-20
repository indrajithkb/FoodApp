import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:foodieapp/homeScreen/repo/repository.dart';
import 'package:foodieapp/homeScreen/view/model/demo_model.dart';

part 'demo_user_event.dart';
part 'demo_user_state.dart';

class DemoUserBloc extends Bloc<DemoUserEvent, DemoUserState> {
  final DemoRepository _demoRepository;
  DemoUserBloc(this._demoRepository) : super(DemoUserLoading ()) {
    on<LoadDemoUser>((event, emit) async{
     emit(DemoUserLoading());
     print("first state emitted");
     try {
       final DemoModel user=await _demoRepository.demoUser();
     emit(DemoUserLoaded(user));
     } catch (e) {
       emit(DemoUserError(e.toString()));
     }
      
    });
  }
}
