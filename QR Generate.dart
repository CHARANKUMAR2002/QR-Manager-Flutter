import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'qr res.dart';

class Generate extends StatefulWidget {
  @override
  _GenerateState createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  TextEditingController mycontroller = new TextEditingController();

  void nav() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => result(myqr: mycontroller.text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text("Generate QR Code"),
        centerTitle: true,
        shadowColor: Colors.blue,
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
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
              height:40,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                controller: mycontroller,
                style: TextStyle(
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.link_sharp, color: Colors.blue),
                  labelText: "Enter URL",
                  labelStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.blue,
                          width: 3.0),
                      borderRadius: BorderRadius.circular(50)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 3.0),
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ),
            ),
            SizedBox(height: 80),
            RaisedButton.icon(
              onPressed: () {
                nav();
              },
              icon: Icon(
                Icons.qr_code_rounded,
                color: Colors.white,
              ),
              label: Text(
                "Generate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              padding:
                  EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
              shape: StadiumBorder(),
              color: Colors.blue,
            ),
            SizedBox(height: 50),
            RaisedButton.icon(
              onPressed: () {
                setState(() {
                  mycontroller.text = "";
                });
              },
              icon: Icon(
                Icons.clear,
                color: Colors.white,
              ),
              label: Text(
                "Clear Field",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              padding:
                  EdgeInsets.only(left: 45, right: 45, top: 10, bottom: 10),
              shape: StadiumBorder(),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
