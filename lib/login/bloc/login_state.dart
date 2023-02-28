part of 'login_bloc.dart';

class LoginState {
 final bool onActive;
 LoginState({required this.onActive});
}

class InitialState extends LoginState {
  InitialState():super(onActive: true);
}
