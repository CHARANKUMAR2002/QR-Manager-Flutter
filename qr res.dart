import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class result extends StatefulWidget {
  final myqr;

  const result({this.myqr});

  @override
  _resultState createState() => _resultState();
}

class _resultState extends State<result> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("QR Code"),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),centerTitle: true,brightness: Brightness.dark,elevation: 20,shadowColor: Colors.blue,),
      body: Column(
        children: <Widget>[
          SizedBox(
              height: 50,
            ),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(
                    "https://www.crushpixel.com/static15/preview2/blue-qr-code-scanning-vector-2144722.jpg"),
              ),
            ),
            SizedBox(
              height:50,
            ),
          Center(child: QrImage(data: widget.myqr,size: 250.0,foregroundColor: Colors.blue,gapless: false, version: QrVersions.auto,),
          ),
        ],
      ),
    );
  }
}
