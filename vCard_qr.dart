import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class vCard extends StatefulWidget {

  final card;

  const vCard({this.card});

  @override
  _vCardState createState() => _vCardState();
}

class _vCardState extends State<vCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("vCard QR Code"),centerTitle: true,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),brightness: Brightness.dark,elevation: 60,shadowColor: Colors.purple,backgroundColor: Colors.purple,),
      body: Column(
        children: <Widget>[
          SizedBox(
              height: 50,
            ),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.purple,
                backgroundImage: NetworkImage(
                    "https://www.crushpixel.com/big-static18/preview4/identification-card-icon-id-profile-3019324.jpg"),
              ),
            ),
             SizedBox(
              height: 60,
            ),
          Center(child: QrImage(data: widget.card,size: 250.0,foregroundColor: Colors.purple,gapless: false, version: QrVersions.auto, embeddedImage: NetworkImage("https://www.crushpixel.com/big-static18/preview4/identification-card-icon-id-profile-3019324.jpg"),),
          ),
        ],
      ),
    );
  }
}