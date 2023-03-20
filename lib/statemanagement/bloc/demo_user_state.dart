part of 'demo_user_bloc.dart';

abstract class DemoUserState extends Equatable {

  

}
//loading state
class DemoUserLoading extends DemoUserState {
  @override
  List<Object> get props => [];

}
//loaded state
class DemoUserLoaded extends DemoUserState {
  DemoModel user;
  DemoUserLoaded(this.user);
  @override
  List<Object> get props => [user as Object];

}