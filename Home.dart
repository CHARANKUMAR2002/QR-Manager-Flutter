import 'package:flutter/material.dart';
import 'package:qr_manager/VCard.dart';
import 'QR Generate.dart';
import 'QR WiFi.dart';
import 'VCard.dart';
import 'Whatsapp.dart';
import 'Instagram.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String image =
      "https://thumbs.dreamstime.com/b/blue-qr-code-modern-vector-linear-icon-dark-background-blue-qr-code-modern-vector-linear-icon-symbol-dark-background-103989837.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        brightness: Brightness.dark,
          title: Text("QR Manager"),
          backgroundColor: Colors.black,
          centerTitle: true,
          elevation: 60,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          shadowColor: Colors.white),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage(image),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Container(
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Generate()));
                  },
                  padding:
                      EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
                  icon: Icon(FontAwesomeIcons.qrcode),
                  label: Text("Generate QR Code"),
                  shape: StadiumBorder(),
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => qr_wifi()));
                },
                padding:
                    EdgeInsets.only(left: 65, right: 65, top: 10, bottom: 10),
                icon: Icon(Icons.wifi_outlined),
                label: Text("WiFi QR Code"),
                shape: StadiumBorder(),
                color: Colors.red,
                textColor: Colors.white,
              ),
            ),
             SizedBox(height: 30),
            Container(
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => vcard()));
                },
                padding:
                    EdgeInsets.only(left: 65, right: 65, top: 10, bottom: 10),
                icon: Icon(Icons.contacts),
                label: Text("vCard QR Code"),
                shape: StadiumBorder(),
                color: Colors.purple,
                textColor: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => whatsapp()));
                },
                padding:
                EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
                icon: Icon(FontAwesomeIcons.whatsapp),
                label: Text("Whatsapp QR Code"),
                shape: StadiumBorder(),
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  colors: [Colors.deepPurple,Colors.pink,Colors.deepOrange, Colors.yellow],
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                ),
                borderRadius: BorderRadius.circular(50.0)
              ),
              child: FlatButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => insta()));
                },
                padding:
                EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
                label: Text("Instagram QR Code"),
                icon: Icon(FontAwesomeIcons.instagram),
                shape: StadiumBorder(),
                color: Colors.transparent,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
