import 'dart:html';
import 'package:ajudaai/app/screens/map/MapController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

final _mapController = MyMapController();

class MapView extends StatefulWidget {
  MapView({Key key}) : super(key: key);

  @override
  _MapView createState() => _MapView();
}

class _MapView extends State<MapView> {
  LatLng _center = LatLng(-20.188389, -40.192908);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_mapController.getCurrentLtg()),),
      body: FlutterMap(
        options: MapOptions(center: _center, zoom: 2),
        layers: [
          TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/lucasll/ckq01l0re8qij17lmgb5uqb36/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibHVjYXNsbCIsImEiOiJja3B6eDNvaHUwaG14Mm5yMDZzejFtMXE3In0.2f-bxWD7CQs5KTv0FHvQGw",
            additionalOptions: {
              'accessToken':
                  "pk.eyJ1IjoibHVjYXNsbCIsImEiOiJja3B6eDNvaHUwaG14Mm5yMDZzejFtMXE3In0.2f-bxWD7CQs5KTv0FHvQGw",
              'id': 'mapbox.mapbox-streets-v8',
            },
          )
        ],
      ),
    );
  }
}
