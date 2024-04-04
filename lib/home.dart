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
  bool _toggle = false;

  void showToggle() {
    setState(() {
      _toggle = !_toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Flutter State Management"),
        ),
        body: SizedBox(
          width: double.infinity,
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Visibility(
                  visible: _toggle,
                  child: const Text(
                    "Widget is visible",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  )),
              ElevatedButton(
                  onPressed: () {
                    showToggle();
                  },
                  child: Text(!_toggle ? "Show me" : "Hide me")),
            ],
          ),
        ));
  }
}
