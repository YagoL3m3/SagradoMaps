import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mapa sem API',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mapa sem API'),
        ),
        body: MapView(),
      ),
    );
  }
}

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(0, 0), // Coordenadas do centro do mapa
        zoom: 10.0, // Zoom inicial
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: 'assets/mapa.jpeg', // Caminho para a imagem do mapa
          tileSize: 256, // Tamanho dos azulejos da imagem
        ),
      ],
    );
  }
}
