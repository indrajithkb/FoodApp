import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:foodieapp/statemanagement/model/demo_model.dart';
import 'package:foodieapp/statemanagement/repo/repo.dart';

part 'demo_user_event.dart';
part 'demo_user_state.dart';

class DemoUserBloc extends Bloc<DemoUserEvent, DemoUserState> {
  final DemoRepository _demoRepository;
  DemoUserBloc(this._demoRepository) : super(DemoUserLoading()) {
    on<LoadDemoUser >((event, emit) async{
     emit(DemoUserLoading());
     print("first state emitted");
    //  final DemoModel user=await _demoRepository.demoUser();
    //  emit(DemoUserLoaded(user));
    });
    on<LoadedUser>(((event, emit) async{
 final DemoModel user=await _demoRepository.demoUser();
     emit(DemoUserLoaded(user));
      emit(DemoUserLoaded(user));
    }));
  }
}
