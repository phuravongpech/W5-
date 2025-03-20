import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week5/Week5/model/color_counter.dart';

enum CardType { red, blue }

class ColorTapsScreen extends StatefulWidget {
  const ColorTapsScreen({super.key});

  @override
  ColorTapsScreenState createState() => ColorTapsScreenState();
}

class ColorTapsScreenState extends State<ColorTapsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Taps')),
      body: Column(
        children: [ColorTap(type: CardType.red), ColorTap(type: CardType.blue)],
      ),
    );
  }
}

class ColorTap extends StatelessWidget {
  final CardType type;

  const ColorTap({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = type == CardType.red ? Colors.red : Colors.blue;

    return Consumer<ColorCounter>(
      builder: (context, colorCounter, child) {
        int tapCount =
            type == CardType.red ? colorCounter.red : colorCounter.blue;
        VoidCallback onTap =
            type == CardType.red
                ? colorCounter.incrementRed
                : colorCounter.incrementBlue;

        return GestureDetector(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text(
                'Taps: $tapCount',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
