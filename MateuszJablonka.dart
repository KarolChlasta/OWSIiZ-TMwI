import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

  void main() => runApp(MyApp());
	
  class MyApp extends StatelessWidget {
	
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Mateusz Jablonka',
        home: NapisAnimacja(),
      );
    }
  }

  class NapisAnimacja extends StatefulWidget {
    NapisAnimacjaState createState() => NapisAnimacjaState();
  }
	
  class NapisAnimacjaState extends State<NapisAnimacja> with TickerProviderStateMixin {

    AnimationController controller;
    Animation<double> animacja;

    initState() {
      super.initState();
      controller = AnimationController(duration: const Duration(milliseconds: 1000), vsync: this,value: 0.30,lowerBound: 0.30,upperBound: 0.5);
	
      animacja = CurvedAnimation(parent: controller, curve: Curves.linear);
      controller.forward();
    }

    @override
    dispose() {
      controller.dispose();
      super.dispose();
	
    }
	
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
	
        body: Center(
          child: RotationTransition(
            turns: animacja,
            alignment: Alignment(0.1, 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Hello World', style: TextStyle(color: Colors.amber, fontSize: 30))
              ]
            )
          ),
        ),
      );
    }
  }
