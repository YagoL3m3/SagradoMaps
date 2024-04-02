import 'package:flutter/material.dart';
import 'package:sagradomaps/components/block.dart';
import 'package:sagradomaps/components/location.dart';

class ListaBloco extends StatefulWidget {
  final String letraBloco;
  final String nomeBloco;
  final int idBloco;

  const ListaBloco(this.idBloco, this.letraBloco, this.nomeBloco, {super.key});

  @override
  State<ListaBloco> createState() => _ListaBlocoState();
}

class _ListaBlocoState extends State<ListaBloco> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.12,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(50),
        color: Colors.red,
      ),
      child: TextButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13.0),
                        topRight: Radius.circular(13.0)),
                    color: Color(0xFFEAD196),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Block(widget.nomeBloco),
                          selecionaBloco(widget.idBloco),
                        ]),
                  ),
                );
              });
        },
        child: selecionaIconeBloco(widget.idBloco),
      ),
    );
  }

  Widget selecionaIconeBloco(int bloco) {
    if (bloco == 20) {
      return ClipRRect(
        child: Image.asset(
          'assets/images/lanchonete.png',
          fit: BoxFit.contain,
        ),
      );
    }

    if (bloco == 21) {
      return const Icon(
        Icons.settings,
        color: Colors.white,
      );
    }

    return Text(
      widget.letraBloco,
      style: const TextStyle(color: Colors.white, fontFamily: 'Inter'),
    );
  }

  Widget selecionaBloco(int idBloco) {
    switch (idBloco) {
      case 1:
        return const ListBody(
          children: [
            Location('Biblioteca', '"Cor Jesu"'),
            Location('Secretaria', 'Secretaria Unisagrado'),
          ],
        );
      case 2:
        return const ListBody(
          children: [
            Location('Teste B', 'Laboratório de Anatomia II'),
            Location('Secretaria', 'Secretaria Unisagrado')
          ],
        );

      case 3:
        return const ListBody(
          children: [
            Location('Biomedicina', 'Laboratório de Anatomia II'),
            Location('Nutrição', 'Laboratório de Nutrição'),
            Location('Pedagogia', 'Brinquedoteca'),
          ],
        );

      case 4:
        return const ListBody(
          children: [
            Location('Biomedicina  D-009', 'Laboratório de Biociências'),
          ],
        );

      case 5:
        return const ListBody(
          children: [
            Location('Administração', 'Administração e \nCiências Contábeis'),
            Location('Química  E-003', 'Sala de Química'),
            Location(
                'Farmácia  E-007', 'Laboratório de tecnologia\nfarmacêutica'),
            Location(
                'Farmácia  E-009', 'Laboratório de análise\nde medicamentos'),
          ],
        );

      case 6:
        return const ListBody(
          children: [
            Location(
                'Ciência da Comp. F-008', 'Sala de ciência\n da computação'),
            Location('Cursos EAD  F-004', 'Cursos EAD'),
            Location('Educação física', 'Pátio do bloco F'),
            Location('Jogos Digitais  F-108',
                'Laboratório de análise\nde medicamentos'),
            Location('Letras - Tradutor F-104', 'Laboratório de Informática'),
          ],
        );

      case 7:
        return const ListBody(
          children: [
            Location('Educação física', 'Pátio do bloco G'),
          ],
        );

      case 8:
        return const ListBody(
          children: [
            Location('Design de Moda  J-301',
                'Laboratório de criação\nem vestuário e acessórios'),
            Location('Gastronomia  J-002', 'Laboratório de gastronomia'),
            Location('Jornalismo', 'Núcleo de produção multimídia'),
            Location('Letras - Português e Inglês',
                'Hall dos auditórios João\nPaulo e Madre Cléia'),
            Location(
                'Publicidade e Propaganda', 'Núcleo de produção multimídia'),
            Location('Relações Internacionais', 'Népri'),
          ],
        );

      case 9:
        return const ListBody(
          children: [
            Location('Ciências Biológicas', 'Laboratório zoobotânico'),
            Location('Estética e Cosmética',
                'Laboratório de estética\n e cosmética'),
            Location('Fisioterapia', 'Clínica de Fisioterapia'),
            Location('História', 'NUPHIS'),
            Location('Psicologia', 'Clínica de Psicologia'),
          ],
        );

      case 10:
        return const ListBody(
          children: [
            Location('Engenharia Ambiental e Sanitária',
                'Laboratório de operações\n unitárias'),
            Location('Engenharia de Biotecnologia e Bioprocessos',
                'Laboratório de operações\n unitárias'),
            Location(
                'Engenharia Química', 'Laboratório de operações\nunitárias'),
            Location('Odontologia', 'Clínica de Odontologia I'),
          ],
        );

      case 11:
        return const ListBody(
          children: [
            Location('Educação Física', 'Quadra Poliesportiva'),
            Location('Engenharia Agronômica', 'Área de produção vegetal'),
            Location('Engenharia Civil', 'Laboratório de Materiais'),
            Location('Engenharia da Computação', 'Laboratório de Inovação'),
            Location('Engenharia Elétrica', 'Laboratório de Eletrotécnica'),
            Location('Engenharia Mêcanica', 'Laboratório de Mêcanica'),
            Location('Engenharia de Produção',
                'Laboratório de Automação\n e Pneumática'),
            Location('Matemática', 'Laboratório de Inovação'),
          ],
        );

      case 12:
        return const ListBody(
          children: [
            Location('Enfermagem', 'Laboratório de Enfermagem'),
            Location('Nutrição', 'Clínica de Nutrição'),
          ],
        );

      default:
        return const ListBody(
          children: [],
        );
    }
  }
}
