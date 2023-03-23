part of 'demo_user_bloc.dart';

abstract class DemoUserState extends Equatable {}

class DemoUserLoading extends DemoUserState {
  @override
  List<Object> get props => [];
}

class DemoUserLoaded extends DemoUserState {
  FoodDemoModel user;
  DemoUserLoaded(this.user);
  @override
  List<Object> get props => [user];
}

//error state
class DemoUserError extends DemoUserState {
  String err;
  DemoUserError(this.err);
  @override
  List<Object> get props => [err];
}
