import 'package:flutter/foundation.dart';

class ColorCounter extends ChangeNotifier {
  int _red = 0;
  int _blue = 0;

  int get red => _red;
  int get blue => _blue;

  void incrementRed() {
    _red++;
    notifyListeners();
  }

  void incrementBlue() {
    _blue++;
    notifyListeners();
  }
}
