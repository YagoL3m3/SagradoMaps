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
          child: ListView(
            children: [
              DrawerHeader(
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/logo_unisagrado.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.add, color: Colors.white,),
                title: const Text('Creditos', style: TextStyle(color: Colors.white, fontSize: 16,fontFamily: 'Inter',),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CreditosScreen()));
                }
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 1,
        width: double.infinity,
        color: Colors.red,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ClipRRect(
                child: Image.asset(
                  'assets/images/mapa.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const ListaBloco(),
          ],
        ),
      ),
    );
  }
}
