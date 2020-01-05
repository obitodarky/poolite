import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Completer<GoogleMapController> _controller = Completer();

  LatLng latLng;

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  void getLocation() async{
    var currentLocation;
    var location = new Location();
    currentLocation = await location.getLocation();
    latLng = LatLng(currentLocation.lattitue, currentLocation.longitude);
  }

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
            children: <Widget>[
              Container(
                height: 120,
                width: 450,
                color: Colors.cyanAccent,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.add_circle, color: Colors.white,),
                          Container(
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
                    target: latLng,
                    zoom: 11.0,
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
