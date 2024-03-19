import 'package:flutter/material.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste'),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.network(
            'https://th.bing.com/th/id/R.a5d2ec4fca2d54115c8e0668e5c47723?rik=ch2xfuaJK7nRZw&pid=ImgRaw&r=0',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
