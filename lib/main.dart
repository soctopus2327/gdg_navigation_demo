import 'package:flutter/material.dart';
import 'home_page.dart';
import 'projects_page.dart';
import 'skills_page.dart';
import 'contact_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/projects': (context) => ProjectsPage(),
        '/skills': (context) => SkillsPage(),
        '/contact': (context) => ContactPage(),
      }
    );
  }
}


