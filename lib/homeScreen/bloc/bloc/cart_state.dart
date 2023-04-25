part of 'cart_bloc.dart';

 class CartState extends Equatable {
   bool isCartButtonVisible ;
   bool isExpand ;
   Map<String, CartModel>? cartData ;
   CartState({required this.isCartButtonVisible,required this.isExpand,this.cartData});
  
  @override
  List<Object> get props => [];
}

class CartInitial extends CartState {
  CartInitial():super(isCartButtonVisible: false,isExpand: false,);

}
