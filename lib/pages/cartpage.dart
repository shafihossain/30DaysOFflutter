// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.canvasColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title:"Cart".text.make()
        ),
        



    );
  }
}
