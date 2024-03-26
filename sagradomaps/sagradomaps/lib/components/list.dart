import 'package:flutter/material.dart';
import 'package:sagradomaps/components/block.dart';
import 'package:sagradomaps/components/location.dart';

class ListaBloco extends StatefulWidget {
  const ListaBloco({super.key});

  @override
  State<ListaBloco> createState() => _ListaBlocoState();
}

class _ListaBlocoState extends State<ListaBloco> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      color: const Color(0xFFEAD196),
      child: TextButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFFEAD196),
                      ),
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: const SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Block('BLOCO C'),
                          ListBody(
                            children: [
                              Location('Biomedicina','Laboratório de Anatomia II'),
                              Location('Nutrição', 'Laboratório de Nutrição'),
                              Location('Pedagogia', 'Brinquedoteca'),
                            ],
                          ),
                        ]),
                  ),
                );
              });
        },
        child: const Text('Simulação Bloco C!'),
      ),
    );
  }
}
