// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables, camel_case_types, unused_element, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/buy.dart';
import 'package:flutter_application_2/utlites/approutes.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.canvasColor,
      appBar: AppBar(
          backgroundColor: Colors.transparent, title: "Cart".text.make()),
      body: Column(
        children: [
          _Cartlist().p32().expand(),
          Divider(),
          _cardtotal(),
        ],
      ),
    );
  }
}

class _cardtotal extends StatelessWidget {
  const _cardtotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9900".text.xl4.color(context.theme.focusColor).make(),
          30.widthBox,
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, MyRoutes.Buy),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(context.theme.focusColor)),
              child: "Buy".text.color(Colors.white).center.make().w32(context))
        ],
      ),
    );
  }
}

class _Cartlist extends StatefulWidget {
  @override
  __CartlistState createState() => __CartlistState();
}

class __CartlistState extends State<_Cartlist> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
            leading: Icon(Icons.done),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove_circle_outline),
                ),
                title:"item 1".text.make()
                );
      },
    );
  }
}
