import 'package:flutter/material.dart';

class BaseSampleWidgetProvider with ChangeNotifier {
  int _currentPage = 0;

  int get currentPage => _currentPage;

  String _buttonText = 'Code';

  set buttonText(String value) {
    _buttonText = value;
    notifyListeners();
  }

  String get buttonText => _buttonText;

  void nextPage() {
    _currentPage = _currentPage == 0 ? 1 : 0;
    _buttonText = _currentPage == 0 ? 'Code' : 'UI';
    notifyListeners();
  }
}
