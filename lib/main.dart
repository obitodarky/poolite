import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:poolite_sample/mainscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);
  var location = new Location();
  var currentLocation = LocationData;

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  get_ocation() async{
    currentLocation = (await location.getLocation()) as Type;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }
}