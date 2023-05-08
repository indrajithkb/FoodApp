import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:foodieapp/homeScreen/view/model/cart_model.dart';
import 'package:foodieapp/homeScreen/view/model/recommended_dishes.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<FetchDatas>((event, emit) {
      emit(
        CartState(
          dishList: event.dishList,
          isVeg: state.isVeg,
          isNonVeg: state.isNonVeg,
          filterVegNonList: event.dishList,
          searchList: event.dishList,
        ),
      );
    });

    on<FilterFetchedData>((event, emit) {
      List<DishDetail> fullMenuList = state.dishList;
      List<DishDetail> filterVegNonList;
      if (event.isVeg == true && event.isNonVeg == false) {
        filterVegNonList = fullMenuList
            .where(
              (e) => e.vegStatus.contains('true'),
            )
            .toList();
      } else if (event.isVeg == false && event.isNonVeg == true) {
        filterVegNonList = fullMenuList
            .where(
              (e) => e.vegStatus.contains('false'),
            )
            .toList();
      } else {
        filterVegNonList = fullMenuList;
      }
      emit(
        CartState(
          dishList: state.dishList,
          isVeg: event.isVeg,
          isNonVeg: event.isNonVeg,
          filterVegNonList: filterVegNonList,
          searchList: state.searchList,
        ),
      );
    });

    on<SearchFetchedData>((event, emit) {
      List<DishDetail> filterVegNonList = state.filterVegNonList;
      List<DishDetail> searchList;
      searchList = filterVegNonList
          .where(
            (e) => e.dishName.toLowerCase().contains(event.val.toLowerCase()),
          )
          .toList();
      emit(
        CartState(
          dishList: state.dishList,
          isVeg: state.isVeg,
          isNonVeg: state.isNonVeg,
          filterVegNonList: state.filterVegNonList,
          searchList: searchList,
        ),
      );
    });
  }
}
