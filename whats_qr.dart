import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class whats_qr extends StatefulWidget {

  final myqr;

  const whats_qr({this.myqr});

  @override
  _whats_qrState createState() => _whats_qrState();
}

class _whats_qrState extends State<whats_qr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("QR Code"),backgroundColor: Colors.green,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),centerTitle: true,brightness: Brightness.dark,elevation: 20,shadowColor: Colors.green,),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.green,
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp0T6mZ1kxVuImwscgj6PcDmjc86K5XYAIvQ5oc7hwz56foK24vjevoZRpn-bcwvq1kNQ&usqp=CAU"),
            ),
          ),
          SizedBox(
            height:50,
          ),
          Center(child: QrImage(data: widget.myqr,size: 250.0,foregroundColor: Colors.green,gapless: false, version: QrVersions.auto, embeddedImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF3UceJku0H3a5-rOydOZb3opcDRqjxdpqhMUcFqplnlgivF4Vr8udFt62h_515_5Y5zE&usqp=CAU"),),
          ),
        ],
      ),
    );
  }
}
