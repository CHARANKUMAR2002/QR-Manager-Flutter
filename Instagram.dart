import 'package:flutter/material.dart';
import 'insta_qr.dart';

class insta extends StatefulWidget {
  const insta({Key? key}) : super(key: key);

  @override
  _instaState createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  TextEditingController mycontroller = new TextEditingController();
  void nav() {
    String insta_id = mycontroller.text;
    String card = "https://www.instagram.com/$insta_id/";
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => insta_qr(myqr: card)),
    );
  }
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/originals/17/76/0a/17760a6daad2edf7f4d9b837b5437246.jpg"),
              ),
            ),
            SizedBox(
              height:40,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Container(
                decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      colors: [Colors.deepPurple,Colors.pink,Colors.deepOrange, Colors.yellow],
                      begin: FractionalOffset.centerLeft,
                      end: FractionalOffset.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(50.0)
                ),
                child: TextField(
                  cursorColor: Colors.white,
                  controller: mycontroller,
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.white),
                    labelText: "Enter Insta ID Here",
                    labelStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.white,
                            width: 1.0),
                        borderRadius: BorderRadius.circular(50)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.circular(50.0)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 80),
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
                 nav();
                },
                icon: Icon(Icons.qr_code_2_outlined),
                label: Text("Generate"),
                padding:
                EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
                shape: StadiumBorder(),
                color: Colors.transparent,
                textColor: Colors.white,
              ),
            ),
            SizedBox(height: 50),
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
                  setState(() {
                    mycontroller.text="";
                  });
                },
                padding:
                EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
                icon: Icon(Icons.clear),
                label: Text("Clear"),
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
