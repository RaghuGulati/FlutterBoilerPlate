/*import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './MyLocalizations.dart';

class MyLocalizationsDelegate extends LocalizationsDelegate<MyLocalizations>{
  const MyLocalizationsDelegate();

  @override
  bool isSupported(Locale locale){
    return ['eng', 'hindi'].contains(locale.languageCode);
  }

  @override
  

  @override 
  Future<MyLocalizations> load(Locale locale) async{
    MyLocalizations localizations = new MyLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<MyLocalizations> old) {
    return false;
  }
}*/