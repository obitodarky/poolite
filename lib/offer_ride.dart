import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class OfferRide extends StatefulWidget {
  @override
  _OfferRideState createState() => _OfferRideState();
}

class _OfferRideState extends State<OfferRide> {
  Completer<GoogleMapController> _controller = Completer();
  var currentLocation;
  LatLng latLng;

  final Set<Marker> _markers = {};
  final Set<Polyline>_polyline={};

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  Future<void> getLocation() async{
    var location = new Location();
    currentLocation = await location.getLocation();


  }

  @override
  void initState(){
    // TODO: implement initState
    getLocation();
    super.initState();
    var location = new Location();
    currentLocation = location.getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
            children: <Widget>[
              Container(
                height: 220,
                width: 450,
                color: Colors.cyanAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(Icons.add_circle, color: Colors.white,),
                          Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              width: 200,
                              height: 30,
                              child: FlatButton(
                                color: Colors.white,
                                child: Text("Source"),
                                onPressed: (){},
                              )
                          )
                        ],
                      ),
                      width: 450,
                      height: 120,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(Icons.add_circle, color: Colors.white,),
                          Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              width: 200,
                              height: 30,
                              child: FlatButton(
                                color: Colors.white,
                                child: Text("Destination"),
                                onPressed: (){},
                              )
                          )
                        ],
                      ),
                      width: 450,
                      height: 120,
                    ),
                  ],
                ),

              ),
              Container(
                alignment: Alignment.center,
                height: 400,
                width: 400,
                child: GoogleMap(
                  mapType: MapType.normal,
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(18.504879, 73.815972),
                    zoom: 12.0,
                  ),
                ),
              ),
              Container(
                child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text("Ride Status: Confirmed", style: TextStyle(fontSize: 15),),
                          Icon(Icons.check_circle, color: Colors.green,),
                          Text("OTP: 1234", style: TextStyle(fontSize: 15),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text("Driver name: Elon Musk", style: TextStyle(fontSize: 15, color: Colors.grey),),
                          Text("Tesla Model S(Red)", style: TextStyle(fontSize: 15, color: Colors.grey),)
                        ],
                      ),
                    ]
                ),
              )
            ]
        ),
      ),
    );
  }
}
