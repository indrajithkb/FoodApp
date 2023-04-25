import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:foodieapp/homeScreen/view/model/cart_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartIncrementItem >((event, emit) {
     return emit(CartState(isCartButtonVisible: true,isExpand: true));
    });
  }
}
