import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinKitExample extends StatefulWidget {
  const SpinKitExample({super.key});

  @override
  State<SpinKitExample> createState() => _SpinKitExampleState();
}

class _SpinKitExampleState extends State<SpinKitExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Spinkit flutter")),
      body: GridView.count(
        crossAxisSpacing: 5,
        mainAxisSpacing: 3,
        crossAxisCount: 3,
        children: [
          const SpinKitChasingDots(
            color: Colors.indigo,
          ),
          const SpinKitCircle(
            color: Colors.amber,
          ),
          const SpinKitDancingSquare(
            color: Colors.blueAccent,
          ),
          SpinKitDoubleBounce(
            color: Colors.pink,
          ),
         
          SpinKitWanderingCubes(
            color: Colors.teal,
          ),
          SpinKitHourGlass(color: Colors.lightGreenAccent),
          SpinKitDualRing(
            color: Colors.cyan,
          ),
        ],
      ),
    
    );
  }
}
