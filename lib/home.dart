import 'package:flutter/material.dart';
import 'package:routing/second_page.dart';

class MyHomePage extends StatefulWidget {
  final route = "/";
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Flutter Routing"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, const SecondPage().route);
              },
              child: const Text("Press me")),
        ));
  }
}
