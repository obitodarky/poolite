import 'package:flutter/material.dart';
import 'package:poolite_sample/main.dart';
import 'package:poolite_sample/main_function.dart';
import 'package:poolite_sample/main_menu.dart';
import 'package:poolite_sample/otp.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: ListView(
            children: <Widget>[
              Container(
                child: Image.asset("lib/pool_logo.jpeg"),
              ),
              Container(
                height: 250,
                color: Colors.cyanAccent,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                        width: 200,
                        color: Colors.white,
                        child: TextFormField(initialValue: "Enter Mobile Number",)),
                    SizedBox(
                      height: 50,
                    ),
                    FlatButton(
                      color: Colors.black,
                      child: Text("Get OTP", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Otp()
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
