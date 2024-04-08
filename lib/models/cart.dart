// ignore_for_file: unused_field, unused_element, unnecessary_getters_setters

import 'package:flutter_application_2/models/catelog.dart';

class Cartmodel {
  //catalog field
  late catalogs _datalog;
  

  //collection of iDs
  final List<int> _itemiDs = [];

  catalogs get catalog => _datalog;

  set catalog(catalogs newcatalog) {
    _datalog = newcatalog;
  }

  //Get iTem in cart
  List<Item> get _items => _itemiDs.map((od) => _datalog.getbyid(od)).toList();



  //Get Total Price
  num get totalPrice =>
      Item.fold(0, (total, current) => total + current.price);


  //Add item
  void add(Item item){ 
    
    _itemiDs.add(item.id as int);

  }

  //Remove item
  void remove(Item item){ 
    _itemiDs.remove(item.id);
  }



}
