import 'package:flutter/material.dart';

class PoolList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("Poolie Rates"),
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 50,),
            Text("Car 1", style: TextStyle(color: Colors.grey),),
            Text(" \$100", style: TextStyle(fontSize: 35),),
            SizedBox(height: 20,),
            Text("Car 2", style: TextStyle(color: Colors.grey),),
            Text(" \$160", style: TextStyle(fontSize: 35),),
            SizedBox(height: 20,),
            Text("Car 3", style: TextStyle(color: Colors.grey),),
            Text(" \$200", style: TextStyle(fontSize: 35),),
            SizedBox(height: 20,),
            Text("Car 4", style: TextStyle(color: Colors.grey),),
            Text(" \$300", style: TextStyle(fontSize: 35),),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
