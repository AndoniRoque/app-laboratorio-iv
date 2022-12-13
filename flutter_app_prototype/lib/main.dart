import 'package:flutter/material.dart';
import 'package:flutter_app_prototype/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(backgroundColor: const Color.fromRGBO(100, 0, 0, 0)),
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'skills': (context) => const ListedSkillsPage(),
        'harry': (context) => const HarryPage(),
        'skill': (context) => const SkillPage(),
      },
    );
  }
}
