part of 'api_home_bloc.dart';

abstract class ApiHomeState extends Equatable {
}

//home data loading
class ApiHomeLoading extends ApiHomeState {
  @override
  List<Object> get props => [];
}
//home data loaded
class ApiHomeLoaded extends ApiHomeState{
  final HomeApiModel result;
ApiHomeLoaded(this.result);
  @override

  List<Object?> get props => [result];

}

//home data error
class ApiHomeError extends ApiHomeState {
  String err;
  ApiHomeError(this.err);
  @override
  List<Object> get props => [err];
}
