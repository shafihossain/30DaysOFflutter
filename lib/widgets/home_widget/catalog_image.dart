// ignore_for_file: camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class catalogimage extends StatelessWidget {
  final String image;

  const catalogimage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p12
        .color(context.theme.canvasColor)
        .make()
        .p16()
        .w40(context);
  }
}
