import 'package:flutter/material.dart';
// import 'package:flutter_app_prototype/pages/home.dart';
// import 'package:flutter_app_prototype/pages/skill_page.dart';
import 'package:flutter_app_prototype/pages/skills_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'MyApp', home: ListedSkillsPage());
  }
}
