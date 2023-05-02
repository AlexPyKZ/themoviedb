import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void printFirst() {
    print("first");
  }

  @override
  Widget build(BuildContext context) {
    final style = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.red),
      foregroundColor: MaterialStateProperty.all(Colors.black),
      overlayColor: MaterialStateProperty.all(Colors.green),
      shadowColor: MaterialStateProperty.all(Colors.blue),
      elevation: MaterialStateProperty.all(5),
      padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
      minimumSize: MaterialStateProperty.all(const Size(100, 100)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(color: Colors.black),
        ),
      ),
      alignment: Alignment.center,
    );
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                style: style,
                onPressed: printFirst,
                child: const Text("Нажми меня"),
              ),
              OutlinedButton(
                style: style,
                onPressed: () {},
                child: const Text("Нажми меня"),
              ),
              TextButton(
                style: style,
                onPressed: () {},
                child: const Text("Нажми меня"),
              ),
              IconButton(
                iconSize: 48,
                padding: const EdgeInsets.all(20),
                style: style,
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
              )
            ],
          ),
        ),
      ),
    );
  }
}
