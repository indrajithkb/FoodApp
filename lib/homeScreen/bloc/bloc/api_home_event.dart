part of 'api_home_bloc.dart';

abstract class ApiHomeEvent extends Equatable {
  const ApiHomeEvent();

  @override
  List<Object> get props => [];
}
class FetchHomeData extends ApiHomeEvent{
 @override
  List<Object> get props => [];

}

class IsDropDownSelected extends ApiHomeEvent{
  String dropValue;
  IsDropDownSelected(this.dropValue);
}