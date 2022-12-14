import 'package:flutter/material.dart';

class DefaultTheme {
  static final defaultTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey.shade900,
    fontFamily: 'cardo',
    textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 25, fontFamily: 'cardo')),
    backgroundColor: const Color.fromRGBO(100, 0, 0, 0),
    appBarTheme: AppBarTheme(
        backgroundColor: const Color.fromARGB(255, 172, 71, 17),
        toolbarTextStyle: ThemeData.light()
            .textTheme
            .copyWith(
                headline1: const TextStyle(fontSize: 30, fontFamily: 'changa'))
            .bodyText1,
        titleTextStyle: ThemeData.light()
            .textTheme
            .copyWith(headline6: const TextStyle(fontFamily: 'changa'))
            .headline6),
  );
}
