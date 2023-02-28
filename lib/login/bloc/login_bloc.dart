import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(InitialState()) {
    on<ShowPassword>((event, emit) {
      bool onAct=state.onActive;
      return emit(LoginState(onActive:!onAct ));
    });
  }
}
