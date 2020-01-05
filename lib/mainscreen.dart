import 'package:flutter/material.dart';
import 'package:poolite_sample/main.dart';
import 'package:poolite_sample/main_function.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: ListView(
            children: <Widget>[
              Container(
                child: Image.asset("pool_logo.jpeg"),
              ),
              Container(
                color: Colors.cyanAccent,
                child: Column(
                  children: <Widget>[
                    TextFormField(),
                    FlatButton(
                      color: Colors.black,
                      child: Text("Get OTP", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Menu()
                        )
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
