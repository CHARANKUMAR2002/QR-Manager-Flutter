import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'WiFi.dart';

/*WIFI:S:<SSID>;T:<WPA|WEP|>;P:<password>;*/


class qr_wifi extends StatefulWidget {

  @override
  _qr_wifiState createState() => _qr_wifiState();
}

class _qr_wifiState extends State<qr_wifi> {
  TextEditingController name = TextEditingController();
  List<String> protection = ["WEP", 'WPA', 'NONE'];
  var selected;
  TextEditingController pass = TextEditingController();

  

   /* String qr = "S:$;T:$selected;P:$pass.text";*/

  void nav() {
    String qr_name = name.text;
    String qr_pass = pass.text;
    String qr ="WIFI:S:$qr_name;T:$selected;P:$qr_pass;;"; 
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => wifi_qr(wifi: qr,))
    );
  }

  bool hide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text("Generate Wi-Fi QR Code"),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        shadowColor: Colors.red,
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
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(
                    "https://cdn3.vectorstock.com/i/thumb-large/03/57/wifi-neon-sign-symbol-neon-glowing-vector-21310357.jpg"),
              ),
            ),
            
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                cursorColor: Colors.red,
                controller: name,
                style: TextStyle(
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box_outlined, color: Colors.red),
                  labelText: "Enter Wi-Fi Name",
                  labelStyle: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.red,
                          width: 3.0),
                      borderRadius: BorderRadius.circular(50)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 3.0),
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            DropdownButton(items: protection.map((value) => DropdownMenuItem(
              child: Text(value, style: TextStyle(color: Colors.red),),
              value: value,

              )).toList(),
              onChanged: (select){
                setState(() {
                  selected = select;
                });
              },
              icon: Icon(Icons.wifi, color: Colors.red,),
              value: selected,
              dropdownColor: Colors.black,
              hint: Text("Select Your Protection type     ", style: TextStyle(color: Colors.red,fontStyle: FontStyle.italic),),
              
              ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                obscureText: hide,
                controller: pass,
                cursorColor: Colors.red,
                style: TextStyle(
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                    child:Icon(Icons.visibility_outlined, color: Colors.red),
                    onTap: (_toggleVisibility),
                    ),
                  prefixIcon: Icon(Icons.lock_outlined, color: Colors.red),
                  labelText: "Enter Password",
                  labelStyle: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.red,
                          width: 3.0),
                      borderRadius: BorderRadius.circular(50)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 3.0),
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
              color: Colors.red,
            ),
            SizedBox(height: 30),
            RaisedButton.icon(
              onPressed: () {
               setState(() {
                 name.text = "";
                 pass.text = "";
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
              color: Colors.red,
            ),
            ],
          ),
          ),
    );
  }
 void _toggleVisibility() {
   if (hide == true){
     hide = false;
     Icon(Icons.visibility_off);
   }
   else{
     hide = true;
   }
   setState(() {
     
   });
 }
}


