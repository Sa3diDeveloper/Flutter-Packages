import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AinmatedTextKitExample extends StatefulWidget {
  AinmatedTextKitExample({Key? key}) : super(key: key);

  @override
  _AinmatedTextKitExampleState createState() => _AinmatedTextKitExampleState();
}

class _AinmatedTextKitExampleState extends State<AinmatedTextKitExample> {
  @override
  Widget build(BuildContext context) {
// Colorize Text Style
    const _colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Horizon',
    );

// Colorize Colors
    const _colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText('do IT!'),
                FadeAnimatedText('do it RIGHT!!'),
                FadeAnimatedText('do it RIGHT NOW!!!'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText('AWESOME'),
              RotateAnimatedText('OPTIMISTIC'),
              RotateAnimatedText(
                'DIFFERENT',
                textStyle: const TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
            isRepeatingAnimation: true,
          ),
          const SizedBox(
            height: 10,
          ),
          AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText(
                'Hello World',
                textStyle: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              WavyAnimatedText('Look at the waves'),
              WavyAnimatedText('They look so Amazing'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'Larry Page',
                textStyle: _colorizeTextStyle,
                colors: _colorizeColors,
              ),
              ColorizeAnimatedText(
                'Bill Gates',
                textStyle: _colorizeTextStyle,
                colors: _colorizeColors,
              ),
              ColorizeAnimatedText(
                'Steve Jobs',
                textStyle: _colorizeTextStyle,
                colors: _colorizeColors,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 70.0,
              fontFamily: 'Canterbury',
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                ScaleAnimatedText('Think'),
                ScaleAnimatedText('Build'),
                ScaleAnimatedText('Ship'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 30.0,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Discipline is the best tool'),
                TypewriterAnimatedText('Design first, then code', cursor: '|'),
                TypewriterAnimatedText('Do not patch bugs out, rewrite them',
                    cursor: '<|>'),
                TypewriterAnimatedText('Do not test bugs out, design them out',
                    cursor: '💡'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 30.0,
              fontFamily: 'Bobbers',
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText('It is not enough to do your best,'),
                TyperAnimatedText('you must know what to do,'),
                TyperAnimatedText('and then do your best'),
                TyperAnimatedText('- W.Edwards Deming'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }
}
