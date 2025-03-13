import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week5/EXERCISE-2/color_tap_screen.dart';
import 'package:week5/EXERCISE-2/stat_screen.dart';
import 'package:week5/model/color_counter.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ColorCounter(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentIndex == 0 ? ColorTapsScreen() : StatisticsScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.tap_and_play),
            label: 'Taps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Statistics',
          ),
        ],
      ),
    );
  }
}
