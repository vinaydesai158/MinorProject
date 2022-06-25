import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widgets.dart';
import '../utils/color_utils.dart';

void main() {
  runApp(form());
}

class form extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExampleState();
}

class _ExampleState extends State<form> {
  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _mobileTextController = TextEditingController();
  TextEditingController _locationTextController = TextEditingController();
//  List<String> _locations = ['Please choose a location', 'A', 'B', 'C', 'D']; // Option 1
//  String _selectedLocation = 'Please choose a location'; // Option 1
  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  String? _selectedLocation; // Option 2

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Container(
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
    _nameTextController),
    const SizedBox(
    height: 20,
    ),
    reusableTextField("Enter Mobile number", Icons.lock_outline, true,
    _mobileTextController),
    const SizedBox(
    height: 5,
    ),

       DropdownButton(
            hint: Text('Please choose a location'), // Not necessary for Option 1
            value: _selectedLocation,
            onChanged: (newValue) {
              setState(() {
       String         _selectedLocation = newValue.toString();
              });
            },
            items: _locations.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
       ),
    ],

    ),

      ),
    ),
    ),
    ),
    );
  }

}