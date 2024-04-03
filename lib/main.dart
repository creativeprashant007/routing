import 'package:flutter/material.dart';
import 'package:routing/home.dart';
import 'package:routing/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: const MyHomePage().route,
      routes: {
        const MyHomePage().route: (context) => const MyHomePage(),
        const SecondPage().route: (context) => const SecondPage(),
      },
    );
  }
}
