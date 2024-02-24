import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Click Counter"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("Add");
            },
            child: const Icon(Icons.add)),
      ),
    );
  }
}
