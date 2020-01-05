import 'package:flutter/material.dart';
import 'package:poolite_sample/poolie_list.dart';

class Poolie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hey! Welcome"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 300),
          height: 500,
          width: 400,
          alignment: Alignment.center,
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.add_circle, size: 50, color: Colors.deepOrange,), onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => PoolList()
                    )
                    );
                  },),
                  IconButton(icon: Icon(Icons.add_circle, size: 50, color: Colors.deepOrange,), onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => PoolList()
                    )
                    );
                  },),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Text("Poolie", style: TextStyle(color: Colors.deepOrange),),
                  Text("Poolie", style: TextStyle(color: Colors.deepOrange),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("I need a ride.", style: TextStyle(color: Colors.deepOrange),),
                  Text("I have my ride", style: TextStyle(color: Colors.deepOrange),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
