import 'dart:html';
import 'package:ajudaai/app/screens/map/MapController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapView extends StatefulWidget {
    MapView({Key key}) : super(key: key);

    @override
    _MapView createState() => _MapView();
}

class _MapView extends State<MapView> {
  LatLng _center = LatLng(10,10);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(options: MapOptions(
      center: _center,
      zoom: 1),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://a.tile.openstreetmap.org/12/2177/1259.png",
          additionalOptions: {
            'accessToken' : "pk.eyJ1IjoibHVjYXNsbCIsImEiOiJja3B6eDNvaHUwaG14Mm5yMDZzejFtMXE3In0.2f-bxWD7CQs5KTv0FHvQGw"
          },
          subdomains: ['a','b','c']
        )
      ],
      );
  }
}