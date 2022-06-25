import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widgets.dart';
import '../utils/color_utils.dart';

class c_skills extends StatefulWidget {
  const c_skills({Key? key}) : super(key: key);

  @override
  State<c_skills> createState() => _c_skillsState();
}

class _c_skillsState extends State<c_skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: [
        hexStringToColor("CB2B93"),
        hexStringToColor("9546C4"),
        hexStringToColor("5E61F4")
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery
              .of(context)
              .size
              .height * 0.2, 20, 0),
          child: Column(
            children: <Widget>[
              logoWidget("assets/images/logo1.png"),

              celectrician(context, true, () {}),
              cplumber(context, true, () {}),
              cpainter(context, true, () {}),


            ],
          ),
        ),
      ),
    ),
    );
  }
}
