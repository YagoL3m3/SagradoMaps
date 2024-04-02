import 'package:flutter/material.dart';

class Block extends StatefulWidget {
  final String nomeBloco;
  const Block(this.nomeBloco,{super.key});

  @override
  State<Block> createState() => _BlockState();
}

class _BlockState extends State<Block> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.red,
        ),
        height: 80,
        width: MediaQuery.of(context).size.width * 0.5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.nomeBloco,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEAD196),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
