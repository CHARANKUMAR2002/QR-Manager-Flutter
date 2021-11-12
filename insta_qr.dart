import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class insta_qr extends StatefulWidget {
  final myqr;

  const insta_qr({this.myqr});

  @override
  _insta_qrState createState() => _insta_qrState();
}

class _insta_qrState extends State<insta_qr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text("Instagram QR Code"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.deepPurple,Colors.pink,Colors.deepOrange, Colors.yellow
                  ])
          ),
        ),
      ),
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
                  "https://i.pinimg.com/originals/17/76/0a/17760a6daad2edf7f4d9b837b5437246.jpg"),
            ),
          ),
          SizedBox(
            height:50,
          ),
          Center(child: QrImage(data: widget.myqr,size: 250.0,foregroundColor: Colors.purpleAccent,gapless: false, version: QrVersions.auto,),
          ),
        ],
      ),
    );
  }
}
