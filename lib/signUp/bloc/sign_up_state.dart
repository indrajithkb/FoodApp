part of 'sign_up_bloc.dart';

 class SignUpState {
  final bool onActive;
  SignUpState({required this.onActive});
 }

class InitialSignUp extends SignUpState {
  InitialSignUp():super(onActive: true);
}
