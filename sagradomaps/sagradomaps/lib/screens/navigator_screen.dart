import 'package:flutter/material.dart';

class Navegacao extends StatelessWidget {
  const Navegacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SagradoMaps',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        backgroundColor: const Color(0xFFBF3131),
      ),
      body: Container(
        color: Colors.red,
        child: Column(
          children: [
            Container(
              color: Colors.red,
              child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ClipRRect(
                child: Image.asset(
                  'assets/images/mapa.jpeg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}