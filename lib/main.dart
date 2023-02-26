import 'package:flutter/material.dart';
import 'package:intro_page/screens/intro_screen.dart';
import 'package:intro_page/screens/tasks_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: 'intro',
      routes: {
        'intro': (context) => IntroPage(),
        'tasks': (context) => TasksPage(),
      },
      // home: IntroPage(),
    );
  }
}
