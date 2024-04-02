import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sagradomaps/controllers/block_controller.dart';

class Navegacao extends StatefulWidget {
  const Navegacao({super.key});

  @override
  State<Navegacao> createState() => _NavegacaoState();
}

class _NavegacaoState extends State<Navegacao> {
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
        body: ChangeNotifierProvider<BlocosController>(
          create: (context) => BlocosController(),
          child: Builder(builder: (context) {
            final local = context.watch<BlocosController>();

            String mensagem = local.erro == ''
                ? 'Latitude: ${local.lat} | Longitude: ${local.long}'
                : local.erro;

            return Center(child: Text(mensagem));
            
          }),
        ));
  }
}
