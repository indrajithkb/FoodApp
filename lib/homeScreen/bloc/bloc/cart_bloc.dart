import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:foodieapp/homeScreen/view/model/cart_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartFirstIncrementItem >((event, emit) {
      print(event.res.values);
      if(event.res.isNotEmpty){
        emit(CartState(cartData: state.cartData, isExpand: true));
      }
        return emit(CartState(cartData: event.res,isExpand: state.isExpand));
      
     
    });
    on<isExpandEvent>((event, emit){
       print(event.res);

      emit(CartState(cartData: state.cartData, isExpand: event.res));

    });

  }
}
