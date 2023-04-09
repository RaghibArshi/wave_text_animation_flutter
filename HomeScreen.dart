import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(fontSize: 25.0),
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('Hello Everyone'),
              WavyAnimatedText('Please Subscribe the Channel'),
              // TypewriterAnimatedText(
              //   'Hello world!',
              //   textStyle: const TextStyle(
              //     fontSize: 32.0,
              //     fontWeight: FontWeight.bold,
              //   ),
              //   speed: const Duration(milliseconds: 1000),
              // ),
            ],
            // repeatForever: true,
            isRepeatingAnimation: true,
            // displayFullTextOnTap: true,
            totalRepeatCount: 1,
            onTap: (){
              print('On Tap Functionality');
            },

            onFinished: (){
              print('On Finished Functionality');
            },
          ),
        ),
      ),
    );
  }
}
