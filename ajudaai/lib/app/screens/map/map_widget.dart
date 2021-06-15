import 'dart:html';
import 'package:ajudaai/app/screens/map/map_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatefulWidget{
  @override
  _MapWidgetState createState() => _MapWidgetState();
  
}

class _MapWidgetState extends State<MapWidget> {
  LatLng _center = LatLng(10,10);

  @override
  Widget build(BuildContext context) {
    // Instanciando o controller
    final MapBloc block = BlocProvider.getBloc<MapBloc>();
    // ESTÁ EXPLODINDO DE PROPOSITO, NÃO MEXE EM NADA HOMEM E MULHER
    return FlutterMap(options: MapOptions(
      center: _center,
      zoom: 13),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://atlas.microsoft.com/map/tile/png?api-version=1&layer=basic&style=main",
          subdomains: ['a','b','c']
        )
      ],
      );
  }
}