import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class LoggerExample extends StatefulWidget {
  const LoggerExample({super.key});

  @override
  State<LoggerExample> createState() => _LoggerExampleState();
}

class _LoggerExampleState extends State<LoggerExample> {
  //create an object of logger
  var logger = Logger();
  @override
  void initState() {
    //d means debug
    logger.d("debug");
    //e means error
    logger.e("error");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
