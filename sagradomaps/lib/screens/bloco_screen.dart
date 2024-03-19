import 'package:flutter/material.dart';
import 'package:sagradomaps/components/block.dart';
import 'package:sagradomaps/components/location.dart';

class BlocoScreen extends StatefulWidget {
  const BlocoScreen({super.key});

  @override
  State<BlocoScreen> createState() => _BlocoScreenState();
}

class _BlocoScreenState extends State<BlocoScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 380,
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
              width: 600,
              color: const Color(0xFFEAD196),
              child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Block('BLOCO C'),
                    Column(
                      children: [
                        Location('Biomedicina', 'Laboratório de Anatomia II'),
                        Location('Nutrição', 'Laboratório de Nutrição'),
                        Location('Pedagogia', 'Brinquedoteca'),
                      ],
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
