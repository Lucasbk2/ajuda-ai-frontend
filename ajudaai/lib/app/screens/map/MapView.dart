import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

class MapView extends StatefulWidget {
  MapView({Key key}) : super(key: key);

  @override
  _MapView createState() => _MapView();
}

class _MapView extends State<MapView> {
  MapController _originalMapController = MapController();
  String _serviceError = '';
  LocationData _currentLocation;
  final Location _locationService = Location();
  bool isLoading = true;
  bool isMapaLoaded = false;

  _MapView() {
    print("Constructor");
    if (_originalMapController == null) {
      _originalMapController = MapController();
    }
  }

  @override
  void initState() {
    super.initState();
    initLocationService();
  }

  void initLocationService() async {
    await _locationService.changeSettings(
      accuracy: LocationAccuracy.high,
      interval: 1000,
    );

    LocationData location;
    bool serviceEnabled;
    bool serviceRequestResult;

    try {
      serviceEnabled = await _locationService.serviceEnabled();

      if (serviceEnabled) {
        var permission = await _locationService.requestPermission();

        if (permission == PermissionStatus.granted) {
          location = await _locationService.getLocation();
          _currentLocation = location;
          _locationService.onLocationChanged
              .listen((LocationData result) async {
            var mapaMove = (result) => {
                  setState(() {
                    _currentLocation = result;
                    _originalMapController.move(
                        LatLng(_currentLocation.latitude,
                            _currentLocation.longitude),
                        _originalMapController.zoom);
                  })
                };
            if (mounted) {
              if (isLoading) {
                isLoading = false;
                Future.delayed(Duration(seconds: 1), () {
                  mapaMove(result);
                });
              } else {
                mapaMove(result);
              }
            }
          });
        }
      } else {
        serviceRequestResult = await _locationService.requestService();
        if (serviceRequestResult) {
          initLocationService();
          return;
        }
      }
    } on PlatformException catch (e) {
      print(e);
      if (e.code == 'PERMISSION_DENIED') {
        _serviceError = e.message;
      } else if (e.code == 'SERVICE_STATUS_ERROR') {
        _serviceError = e.message;
      }
      location = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    LatLng _center;

    // Until currentLocation is initially updated, Widget can locate to 0, 0
    // by default or store previous location value to show.
    if (_currentLocation != null) {
      _center = LatLng(_currentLocation.latitude, _currentLocation.longitude);
    } else {
      _center = LatLng(0, 0);
    }

    /*
    AssetImage PurpleMarkerAsset = AssetImage('markers/PurpleMarker.png');
    Image PurpleMarker = Image(image: PurpleMarkerAsset,fit: BoxFit.cover,);
    AssetImage RedMarkerAsset = AssetImage('markers/RedMarker.png');
    Image RedMarker = Image(image: RedMarkerAsset,fit: BoxFit.cover,);
    AssetImage BlueMarkerAsset = AssetImage('markers/BlueMarker.png');
    Image BlueMarker = Image(image: BlueMarkerAsset,fit: BoxFit.cover,);
    */

    if (isLoading) {
      return Scaffold(
          appBar: AppBar(title: Text('Mapa')),
          body: CircularProgressIndicator());
    } else {
      return Scaffold(
          appBar: AppBar(title: Text('Mapa')),
          body: Observer(
            builder: (_) => FlutterMap(
              mapController: _originalMapController,
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
                /*
            MarkerLayerOptions(
              markers: [
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(_mapController.latitude, _mapController.longitude),
                  builder: (context) => Container(child: new CircleAvatar(
                                                              backgroundColor: Colors.blue,
                                                              child: new Text("A"),
                                                          ),)
                ),
              ],
            ),
            */
              ],
            ),
          ));
    }
  }
}
