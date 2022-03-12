import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../ui/widgets/themes.dart';

class ThemeManagement with ChangeNotifier{
  ThemeData _currentTheme = mainTheme;
  ThemeData get currentTheme => _currentTheme;

  void toggleTheme(){
    _currentTheme = _currentTheme == mainTheme ? secondaryTheme : mainTheme;
    notifyListeners();
  }

  void setNewTheme(ThemeData newTheme){
    _currentTheme = newTheme;
    notifyListeners();
  }

}