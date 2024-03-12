import 'package:flutter/material.dart';

void main() {
  runApp(const Split());
}

class Split extends StatelessWidget {
  const Split({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Image.asset('assets/images/splash.png'),
      ),
    );
  }
}
