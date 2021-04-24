# OWSIiZ-TMwI
Technologie multimedialne w Internecie

Karol Chlasta

Arkadiusz Gilewski

Mateusz Przydacz

Michał Czuryłło

Mateusz Przydacz

Norbert Kulus

Maciej Nowowiejski

Rafal J

Agnieszka F 
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Center(child: Text('My first app')),
      ), //AppBar
      body: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            'Hello world!',
            textStyle: const TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
            speed: const Duration(milliseconds: 1000),
          ),
        ],

        totalRepeatCount: 4,
        pause: const Duration(milliseconds: 500),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
      )
  ), //Scaffold
  ));
}
