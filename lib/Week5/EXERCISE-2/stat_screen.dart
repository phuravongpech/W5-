import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week5/Week5/model/color_counter.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Statistics')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ColorCounter>(
              builder: (context, colorCounter, child) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Red Taps: ${colorCounter.red}',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      'Blue Taps: ${colorCounter.blue}',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
