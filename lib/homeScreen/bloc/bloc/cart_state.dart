part of 'cart_bloc.dart';

 class CartState extends Equatable {
   
   bool isExpand ;
   Map<String, CartModel> cartData;
   CartState({required this.cartData,required this.isExpand});
  
  @override
  List<Object> get props => [cartData,isExpand];
}

class CartInitial extends CartState {
  CartInitial():super(cartData: {},isExpand: false );

}
