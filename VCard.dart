import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'vCard_qr.dart';

class vcard extends StatefulWidget {
  @override
  _vcardState createState() => _vcardState();
}

class _vcardState extends State<vcard> {
  TextEditingController name = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController work = TextEditingController();
  TextEditingController mail = TextEditingController();
  TextEditingController org = TextEditingController();
  TextEditingController title = TextEditingController();

  void nav() {
    String qr_name = name.text;
    String qr_contact = contact.text;
    String qr_work = work.text;
    String qr_mail = mail.text;
    String qr_org = org.text;
    String qr_title = title.text;

    String card =
        "BEGIN:VCARD \nN:$qr_name; \nTEL;TYPE=mobile,VOICE:$qr_contact \nTEL;TYPE=work,VOICE:$qr_work \nEMAIL:$qr_mail \nORG:$qr_org \nTITLE:$qr_title \nVERSION:3.0 \nEND:VCARD";
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => vCard(
                card: card,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Generate vCard QR Code"),
        centerTitle: true,
        brightness: Brightness.dark,
        backgroundColor: Colors.purple,
        elevation: 60,
        shadowColor: Colors.purple,
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
                backgroundColor: Colors.purple,
                backgroundImage: NetworkImage(
                    "https://www.crushpixel.com/big-static18/preview4/identification-card-icon-id-profile-3019324.jpg"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                cursorColor: Colors.purple,
                controller: name,
                style: TextStyle(
                  color: Colors.purple,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.account_box_outlined, color: Colors.purple),
                  labelText: "Name",
                  labelStyle: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.purple,
                          width: 3.0),
                      borderRadius: BorderRadius.circular(50)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 3.0),
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                cursorColor: Colors.purple,
                controller: contact,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.purple,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.contacts_outlined, color: Colors.purple),
                  labelText: "Contact Number",
                  labelStyle: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.purple,
                          width: 3.0),
                      borderRadius: BorderRadius.circular(50)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 3.0),
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                controller: work,
                keyboardType: TextInputType.number,
                cursorColor: Colors.purple,
                style: TextStyle(
                  color: Colors.purple,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.contacts_outlined, color: Colors.purple),
                  labelText: "Work Contact Number",
                  labelStyle: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.purple,
                          width: 3.0),
                      borderRadius: BorderRadius.circular(50)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 3.0),
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                cursorColor: Colors.purple,
                controller: mail,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.purple,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.mail_outline_outlined, color: Colors.purple),
                  labelText: "E-Mail",
                  labelStyle: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.purple,
                          width: 3.0),
                      borderRadius: BorderRadius.circular(50)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 3.0),
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                cursorColor: Colors.purple,
                controller: org,
                style: TextStyle(
                  color: Colors.purple,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.home, color: Colors.purple),
                  labelText: "Organisation",
                  labelStyle: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.purple,
                          width: 3.0),
                      borderRadius: BorderRadius.circular(50)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 3.0),
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                cursorColor: Colors.purple,
                controller: title,
                style: TextStyle(
                  color: Colors.purple,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.title_outlined, color: Colors.purple),
                  labelText: "Job Title",
                  labelStyle: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.purple,
                          width: 3.0),
                      borderRadius: BorderRadius.circular(50)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 3.0),
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ),
            ),
            SizedBox(height: 50),
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
              color: Colors.purple,
            ),
            SizedBox(height: 30),
            RaisedButton.icon(
              onPressed: () {
                setState(() {
                  name.text = "";
                  contact.text = "";
                  work.text = "";
                  mail.text = "";
                  org.text = "";
                  title.text = "";
                });
              },
              icon: Icon(
                Icons.clear,
                color: Colors.white,
              ),
              label: Text(
                "Clear Fields",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              padding:
                  EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
              shape: StadiumBorder(),
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
