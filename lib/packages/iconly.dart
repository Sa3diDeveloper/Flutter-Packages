import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class IconlyExample extends StatefulWidget {
  const IconlyExample({super.key});

  @override
  State<IconlyExample> createState() => _IconlyExampleState();
}

class _IconlyExampleState extends State<IconlyExample> {
  @override
  Widget build(BuildContext context) {
  //note: since Flutter does not support multicolor Icons, we can not support Bulk Icon set. but we are going to implement that in the future.
  //! according the main documentations

    return Scaffold(
      body:Center(
        child:  IconButton(
      icon: Icon(IconlyLight.search), 
      onPressed: () { print("Pressed"); }
     ),
      )
    );
  }
}