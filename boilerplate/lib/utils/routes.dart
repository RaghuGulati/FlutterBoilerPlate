import 'package:flutter/material.dart';
import '../ui/login.dart';
import '../ui/register.dart';

class Routes{
  Routes._();

  static const String login ='/login';
  static const String register ='/register';
  static final routes = <String, WidgetBuilder>{
    login: (BuildContext context) => Login(),
    register: (BuildContext context) => Register(),
  };
}