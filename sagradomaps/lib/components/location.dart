import 'package:flutter/material.dart';
import 'package:sagradomaps/screens/navigator_screen.dart';

class Location extends StatefulWidget {
  final String nomeCurso;
  final String nomeSala;

  const Location(this.nomeCurso, this.nomeSala, {super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: const Color(0xFF7D0A0A),
        ),
        
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SizedBox(
                  
                  child: Text(
                    widget.nomeCurso,
                    style: const TextStyle(
                      fontSize: 24,
                      fontFamily: 'Inter',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text(
                        widget.nomeSala,
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Navegacao(),
                            ));
                      },
                      child: const Icon(
                        Icons.arrow_right_alt_outlined,
                      ),
                    ),
                  ],
                ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
