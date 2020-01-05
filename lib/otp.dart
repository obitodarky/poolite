import 'package:flutter/material.dart';

import 'main_menu.dart';

class Otp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: Text("Verify User"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(child: Text("We have sent you a code to verify your number")),
            Container(
                padding: EdgeInsets.only(top: 10),
                width: 200,
                color: Colors.white,
                child: TextFormField(initialValue: "Enter OTP",)),
            FlatButton(
              color: Colors.cyanAccent,
              child: Text("Sign In"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MainMenu()
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
