import 'package:flutter/material.dart';
import 'package:sagradomaps/components/list.dart';
import 'package:sagradomaps/screens/creditos.dart';

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
      drawer: Drawer(
        child: Container(
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/logo_unisagrado.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: ListTile(
                    leading: const Icon(
                      Icons.circle_outlined,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Creditos',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CreditosScreen()));
                    }),
              ),
              
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: double.infinity,
        color: Colors.red,
        child: Column(
          children: [
            Stack(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          height: MediaQuery.of(context).size.height * 0.897,
                          'assets/images/mapa.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                          top: 290,
                          left: 280,
                          child: ListaBloco(1, 'A', 'Bloco A')),
                      const Positioned(
                          top: 360,
                          left: 300,
                          child: ListaBloco(2, 'B', 'Bloco B')),
                      const Positioned(
                          top: 240,
                          left: 350,
                          child: ListaBloco(3, 'C', 'Bloco C')),
                      const Positioned(
                          top: 350,
                          left: 450,
                          child: ListaBloco(4, 'D', 'Bloco D')),
                      const Positioned(
                          top: 290,
                          left: 430,
                          child: ListaBloco(5, 'E', 'Bloco E')),
                      const Positioned(
                          top: 340,
                          left: 600,
                          child: ListaBloco(6, 'F', 'Bloco F')),
                      const Positioned(
                          top: 285,
                          left: 580,
                          child: ListaBloco(7, 'G', 'Bloco G')),
                      const Positioned(
                          top: 240,
                          left: 930,
                          child: ListaBloco(8, 'J', 'Bloco J')),
                      const Positioned(
                          top: 240,
                          left: 1020,
                          child: ListaBloco(9, 'K', 'Bloco K')),
                      const Positioned(
                          top: 290,
                          left: 1250,
                          child: ListaBloco(10, 'O', 'Bloco O')),
                      const Positioned(
                          top: 290,
                          left: 1330,
                          child: ListaBloco(11, 'L', 'Bloco L')),
                      const Positioned(
                          top: 550,
                          left: 905,
                          child: ListaBloco(12, 'H', 'Bloco H')),
                      const Positioned(
                          top: 340,
                          left: 385,
                          child: ListaBloco(20, '', 'Lanchonete')),
                      const Positioned(
                          top: 195,
                          left: 1050,
                          child: ListaBloco(21, '2', 'Manutenção\n Predial')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 68, 65, 62),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Center(
                      child: Text(
                        'Clique em um bloco!',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
