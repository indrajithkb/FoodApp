part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class FetchDatas extends CartEvent {
  List<DishDetail> dishList;
  FetchDatas({required this.dishList});
}

class FilterFetchedData extends CartEvent {
  bool isVeg;
  bool isNonVeg;
  FilterFetchedData({required this.isVeg, required this.isNonVeg});
}

class SearchFetchedData extends CartEvent {
  // List<DishDetail> searchList;
  String val;
  SearchFetchedData(
      {
      // required this.searchList,
      required this.val});
}
