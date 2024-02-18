import 'package:flutter/material.dart';
--+-+
import 'package:nomnom/models/food.dart';
import 'package:nomnom/widgets/focused_layout.dart';
import 'package:nomnom/widgets/wrapper.dart';

class Customization3D extends StatefulWidget {
  const Customization3D(
      {super.key, required this.basemodel, required this.ing});
  final String basemodel;
  final Customization ing;

  @override
  State<Customization3D> createState() => _Customization3DState();
}

class _Customization3DState extends State<Customization3D> {

  bool cheeseAdded = false;

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
        child: FocusedLayout(
            child: Column(children: [],),
            ));
  }
}
