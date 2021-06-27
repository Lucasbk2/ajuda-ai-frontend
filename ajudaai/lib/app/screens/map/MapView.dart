import 'package:ajudaai/app/screens/map/MapController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:latlong2/latlong.dart';

final _mapController = MyMapController();

class MapView extends StatefulWidget {
  MapView({Key key}) : super(key: key);

  @override
  _MapView createState() => _MapView();
}

class _MapView extends State<MapView> {
  @override
  void initState() {
    super.initState();
    /*final Map<String, double> arguments = ModalRoute.of(context).settings.arguments;
    print("argumento: $arguments['latitude']");
    _mapController.latitude = arguments['latitude'];
    _mapController.longitude = arguments['longitude'];*/
  }

  
  
  @override
  Widget build(BuildContext context) {
    final Map<String, double> arguments = ModalRoute.of(context).settings.arguments;
    _mapController.latitude = arguments['latitude'];
    _mapController.longitude = arguments['longitude'];
    LatLng _center = LatLng(_mapController.latitude, _mapController.longitude);

    return Scaffold(
      appBar: AppBar(title: Observer(builder: (_) => Text('${_mapController.latitude}'),),),
      body: FlutterMap(
        options: MapOptions(center: _center, zoom: 15),
        layers: [
          TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/lucasll/ckq01l0re8qij17lmgb5uqb36/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibHVjYXNsbCIsImEiOiJja3B6eDNvaHUwaG14Mm5yMDZzejFtMXE3In0.2f-bxWD7CQs5KTv0FHvQGw",
            additionalOptions: {
              'accessToken':
                  "pk.eyJ1IjoibHVjYXNsbCIsImEiOiJja3B6eDNvaHUwaG14Mm5yMDZzejFtMXE3In0.2f-bxWD7CQs5KTv0FHvQGw",
              'id': 'mapbox.mapbox-streets-v8',
            },
          ),
          MarkerLayerOptions(
        markers: [
          Marker(
            width: 80.0,
            height: 80.0,
            point: LatLng(_mapController.latitude, _mapController.longitude),
            builder: (ctx) =>
            Container(
              child: Image.asset('images/markers/PurpleMarker'),
            ),
          ),
        ],
      ),
        ],
      ),
    );
  }
}
