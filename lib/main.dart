import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;

  increment() {
    setState(() {
      _count++;
    });
  }

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Click Counter",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                _count.toString(),
                style: TextStyle(fontSize: 32),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: increment, child: const Icon(Icons.add)),
      ),
    );
  }
}
