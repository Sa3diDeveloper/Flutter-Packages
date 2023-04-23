import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//* with flutter svg package we can use svg image in our projects

class SvgExample extends StatefulWidget {
  const SvgExample({super.key});

  @override
  State<SvgExample> createState() => _SvgExampleState();
}

class _SvgExampleState extends State<SvgExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SvgPicture.asset('flutter.svg'),
      )),
    );
  }
}