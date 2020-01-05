import 'package:flutter/material.dart';
import 'package:poolite_sample/poolie.dart';

import 'main_function.dart';


class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: Text("Choose Account"),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Image.asset("lib/profile.png", scale: 10,),
            ),
            FlatButton(
              color: Colors.black,
              child: Text("Find me a Ride", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Menu()
                )
                );
              },
            ),
            FlatButton(
              color: Colors.black,
              child: Text("Offer a Ride", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Poolie()
                )
                );
              },
            ),
            FlatButton(
              color: Colors.black,
              child: Text("Rent My Car", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Menu()
                )
                );
              },
            ),
            FlatButton(
              color: Colors.black,
              child: Text("Drive a Car", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Menu()
                )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
