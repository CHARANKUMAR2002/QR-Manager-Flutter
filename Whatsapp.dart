import 'package:flutter/material.dart';
import 'whats_qr.dart';

class whatsapp extends StatefulWidget {
  const whatsapp({Key? key}) : super(key: key);

  @override
  _whatsappState createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> {
  @override
  TextEditingController mycontroller = new TextEditingController();

  void nav() {
    String phone = mycontroller.text;
    String card =
        "https://wa.me/+91$phone";
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => whats_qr(myqr: card)),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("WhatsApp QR"),
        centerTitle: true,
        brightness: Brightness.dark,
        backgroundColor: Colors.green,
        elevation: 70,
        shadowColor: Colors.green,
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
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp0T6mZ1kxVuImwscgj6PcDmjc86K5XYAIvQ5oc7hwz56foK24vjevoZRpn-bcwvq1kNQ&usqp=CAU"),
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.green,
                controller: mycontroller,
                style: TextStyle(
                  color: Colors.green,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_android_outlined, color: Colors.green),
                  labelText: "Enter WhatsApp Number",
                  labelStyle: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.green,
                          width: 3.0),
                      borderRadius: BorderRadius.circular(50)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 3.0),
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
              color: Colors.green,
            ),
            SizedBox(height: 50),
            RaisedButton.icon(
              elevation: 20,
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
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
