// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      "Catalog App".text.xl5.bold.color(Mytheme.darkbluishColor).make(),
      "Trending Products".text.xl2.bold.color(Mytheme.darkbluishColor).make(),
    ]);
  }
}