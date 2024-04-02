import 'package:flutter/material.dart';
import 'package:sagradomaps/components/location.dart';

class DataBloco extends StatefulWidget {
  final String nomeCurso;
  final String nomeSala;

  const DataBloco({super.key, required this.nomeCurso, required this.nomeSala});

  @override
  State<DataBloco> createState() => _DataBlocoState();
}

class _DataBlocoState extends State<DataBloco> {
  @override
  Widget build(BuildContext context) {
    return const ListBody(
      children: [
        Location('Biomedicina', 'Laboratório de Anatomia II'),
        Location('Nutrição', 'Laboratório de Nutrição'),
        Location('Pedagogia', 'Brinquedoteca'),
        Location('Biomedicina', 'Laboratório de Anatomia II'),
        Location('Nutrição', 'Laboratório de Nutrição'),
        Location('Pedagogia', 'Brinquedoteca'),
      ],
    );
  }
}
