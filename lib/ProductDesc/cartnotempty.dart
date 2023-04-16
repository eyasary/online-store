import 'package:flutter/material.dart';
import 'package:site/list.dart';

class CartNotEmpty extends ChangeNotifier{
  List<Fruit> listcart=[];
  double _price=0.0;
  void add(Fruit fruit)
  {
    listcart.add(fruit);
    _price+=fruit.price;
    notifyListeners();
  }
  void remove(Fruit fruit)
  {
    listcart.remove(fruit);
    _price-=fruit.price;
    notifyListeners();
  }
  List<Fruit> get basketfruit{
    return listcart;
  }
  double get totalPrice{
    return _price;
  }
}