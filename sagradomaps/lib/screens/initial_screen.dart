import 'package:flutter/material.dart';
import 'package:sagradomaps/screens/bloco_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: const Text('SagradoMaps',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          backgroundColor: const Color(0xFFBF3131),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 500,
              width: 600,
              color: Colors.red,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/mapa.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 500,
              width: 600,
              color: const Color(0xFFEAD196),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BlocoScreen(),
                      ));
                },
                child: const Text('Simulação Bloco C!'),
              ),
            )
          ]),
        ));
  }
}
