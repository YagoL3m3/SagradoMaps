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
        backgroundColor: const Color(0xFFF44E3F),
      ),
      drawer: Drawer(
        child: Container(
          color: const Color(0xFFBF3131),
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
        color: const Color(0xFFBF3131),
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
                          height: MediaQuery.of(context).size.height * 0.88,
                          'assets/images/mapa.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.75,
                          left: MediaQuery.of(context).size.width * 0.7,
                          child: const ListaBloco(1, 'A', 'Bloco A')),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.9,
                          left: MediaQuery.of(context).size.width * 0.75,
                          child: const ListaBloco(2, 'B', 'Bloco B')),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.6,
                          left: MediaQuery.of(context).size.width * 0.95,
                          child: const ListaBloco(3, 'C', 'Bloco C')),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.9,
                          left: MediaQuery.of(context).size.width * 1.2,
                          child: const ListaBloco(4, 'D', 'Bloco D')),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.74,
                          left: MediaQuery.of(context).size.width * 1.105,
                          child: const ListaBloco(5, 'E', 'Bloco E')),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.87,
                          left: MediaQuery.of(context).size.width * 1.6,
                          child: const ListaBloco(6, 'F', 'Bloco F')),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.73,
                          left: MediaQuery.of(context).size.width * 1.52,
                          child: const ListaBloco(7, 'G', 'Bloco G')),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.62,
                          left: MediaQuery.of(context).size.width * 2.42,
                          child: const ListaBloco(8, 'J', 'Bloco J')),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.61,
                          left: MediaQuery.of(context).size.width * 2.65,
                          child: const ListaBloco(9, 'K', 'Bloco K')),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.76,
                          left: MediaQuery.of(context).size.width * 3.25,
                          child: const ListaBloco(10, 'O', 'Bloco O')),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.74,
                          left: MediaQuery.of(context).size.width * 3.46,
                          child: const ListaBloco(11, 'L', 'Bloco L')),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 1.44,
                          left: MediaQuery.of(context).size.width * 2.37,
                          child: const ListaBloco(12, 'H', 'Bloco H')),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.89,
                          left: MediaQuery.of(context).size.width * 1,
                          child: const ListaBloco(20, '', 'Lanchonete')),
                      Positioned(
                          top: MediaQuery.of(context).size.width * 0.5,
                          left: MediaQuery.of(context).size.width * 2.75,
                          child: const ListaBloco(21, '2', 'Manutenção\n Predial')),
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
