

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:trial1/utils/color_utils.dart';

import '../reusable_widgets/reusable_widgets.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({Key? key}) : super(key: key);

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
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
              const SizedBox(
                height: 30,
             ),
              reusableTextField("Enter Name", Icons.person_outline, false,
                  _emailTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Mobile number", Icons.lock_outline, true,
                  _passwordTextController),
              const SizedBox(
                height: 5,
              ),
              //customerButton(context, true, (){}),
              login(context, true, (){}),
              // signUpOption()


            ],
          ),
        ),
      ),
    ),
    );
  }
}

