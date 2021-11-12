import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class wifi_qr extends StatefulWidget {

final wifi;

  const wifi_qr({this.wifi});

  @override
  _wifi_qrState createState() => _wifi_qrState();
}

class _wifi_qrState extends State<wifi_qr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.red,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),title: Text("Wi-Fi QR"),centerTitle: true,brightness: Brightness.dark,elevation: 20,shadowColor: Colors.red,),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(
                    "https://cdn3.vectorstock.com/i/thumb-large/03/57/wifi-neon-sign-symbol-neon-glowing-vector-21310357.jpg"),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(child: QrImage(data: widget.wifi, foregroundColor: Colors.red,gapless: false,size: 250.0,version: QrVersions.auto,),
            ),
          ],
        ),
      ),
    );
  }
}