part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}
class CartFirstIncrementItem extends CartEvent{

  final  Map<String, CartModel>   res;
  CartFirstIncrementItem({required this.res});
    @override
  List<Object> get props => [res];
}

class isExpandEvent extends CartEvent{
  bool res;
  isExpandEvent({required this.res});
   @override
  List<Object> get props => [res];
}
