import 'package:flutter/material.dart';

class CreditosScreen extends StatefulWidget {
  const CreditosScreen({super.key});

  @override
  State<CreditosScreen> createState() => _BlocoScreenState();
}

class _BlocoScreenState extends State<CreditosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
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
          width: MediaQuery.of(context).size.width * 1,
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFEAD196),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children:  [
                  const Text(''),
                  const Text(
                    'Desenvolvedores:',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                    ),
                  ),
                  const Text(''),
                  const Text(
                    'Bruno Bomfim Lima',
                    style: TextStyle(
                      fontFamily: 'Inter',
                    ),
                  ),
                  const Text(
                    'Guilherme Tamelini Bertozo',
                    style: TextStyle(
                      fontFamily: 'Inter',
                    ),
                  ),
                  const Text(
                    'Pedro Lucas Franco',
                    style: TextStyle(
                      fontFamily: 'Inter',
                    ),
                  ),
                  const Text(
                    'Pedro Marques Correa Domingues',
                    style: TextStyle(
                      fontFamily: 'Inter',
                    ),
                  ),
                  const Text(
                    'Yago da Silva Leme',
                    style: TextStyle(
                      fontFamily: 'Inter',
                    ),
                  ),
                  const Text(''),
                  const Text(
                    'Orientador:',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                    ),
                  ),
                  const Text(''),
                  const Text(
                    'Elvio Silva',
                    style: TextStyle(
                      fontFamily: 'Inter',
                    ),
                  ),
                  const Text(''),
                  const Text(
                    'Com o apoio de:',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/images/logo_unisagrado.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
