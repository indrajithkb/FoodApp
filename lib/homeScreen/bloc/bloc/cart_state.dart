part of 'cart_bloc.dart';

class CartState extends Equatable {
  List<DishDetail> dishList;
  bool isVeg;
  bool isNonVeg;
  List<DishDetail> filterVegNonList;
  List<DishDetail> searchList;

  CartState(
      {required this.dishList,
      required this.isVeg,
      required this.isNonVeg,
      required this.filterVegNonList,
      required this.searchList});

  @override
  List<Object> get props =>
      [dishList, isVeg, isNonVeg, filterVegNonList, searchList];
}

class CartInitial extends CartState {
  CartInitial()
      : super(
            dishList: [],
            isVeg: false,
            isNonVeg: false,
            filterVegNonList: [],
            searchList: []);
}
