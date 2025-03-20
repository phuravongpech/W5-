//subject: RidePrefListener
class RidePref {
  //example
  int totalPassengers = 0;

  final List<RidePreferencesListener> _listeners = [];

  void addListener(RidePreferencesListener listener) {
    _listeners.add(listener);
  }

  void setTotalPassengers(int newTotalPassengers) {
    totalPassengers = newTotalPassengers;
    _notifyListeners();
  }

  void _notifyListeners() {
    for (var listener in _listeners) {
      listener.onRidePrefChanged(
        "total passengers updated to $totalPassengers",
      );
    }
  }
}

//listener
abstract class RidePreferencesListener {
  void onRidePrefChanged(String ridePref);
}

//observers
class RidePrefDisplay implements RidePreferencesListener {
  @override
  void onRidePrefChanged(String ridePref) {
    print("logged from display: $ridePref");
  }
}

class RidePrefNotification implements RidePreferencesListener {
  @override
  void onRidePrefChanged(String ridePref) {
    print("logged from notification: $ridePref");
  }
}

void main() {
  RidePref ridePref = RidePref();

  RidePrefDisplay ridePrefDisplay = RidePrefDisplay();
  RidePrefNotification ridePrefNotification = RidePrefNotification();

  ridePref.addListener(ridePrefDisplay);
  ridePref.addListener(ridePrefNotification);

  print("setting total passengers to 5");
  ridePref.setTotalPassengers(5);

  print("setting total passengers to 10");
  ridePref.setTotalPassengers(10);
}
