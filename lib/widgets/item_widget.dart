// ignore_for_file: unused_import, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, duplicate_import, use_super_parameters, empty_constructor_bodies, unnecessary_cast, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/catelog.dart';
import 'package:flutter_application_2/models/catelog.dart';

import '../models/catelog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {},
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
