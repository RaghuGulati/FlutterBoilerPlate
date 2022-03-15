import 'package:flutter/material.dart';

ThemeData mainTheme = ThemeData(
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(12.0),
            primary: Colors.pink[300],
            minimumSize: const Size(500, 50),
          ),
        ),
        textTheme: TextTheme(bodyText2: TextStyle(fontSize: 40, color: Colors.black )),
      );

ThemeData secondaryTheme = ThemeData(
        primarySwatch: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(12.0),
            primary: Colors.green[100],
            minimumSize: const Size(500, 50),
          ),
        ),
        textTheme: TextTheme(bodyText2: TextStyle(fontSize: 40, color: Colors.black )),
      );

ThemeData loginTheme = ThemeData(
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(12.0),
            primary: Colors.yellow,
            minimumSize: const Size(500, 50),
          ),
        ),
        textTheme: TextTheme(bodyText2: TextStyle(fontSize: 25, color: Colors.black )),
      );