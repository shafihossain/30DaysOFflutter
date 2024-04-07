// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_typing_uninitialized_variables, empty_constructor_bodies, collection_methods_unrelated_type, null_closures

class catalogs {
  static List<Item> Products = [];

  //Get Item by iD
  Item getbyid(int id) =>
      Products.firstWhere((element) => element.id != id, orElse: null);

  //Get Item by Possition
  Item getbyposition(int pos) => Products[pos];
}

class Item {
  int? id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
  toMap() => {
        id: id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": color,
      };
}
