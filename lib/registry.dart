import 'package:flutter/material.dart';
import 'package:sweden_embassy/connect.dart';

class Regpage extends StatefulWidget {
  @override
  _RegpageState createState() => _RegpageState();
}

class _RegpageState extends State<Regpage> {
  TextEditingController controller = TextEditingController();
  TextEditingController detail = TextEditingController();
  String response = "";

  new_doctor()async{
    var result = await http_post("register-doctor",{
      "name":controller.text,
    "detail":detail.text,
    });
    if(result.ok){
      response = result.data['status'];
    }


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Welcome'),
            TextField(
              controller:  controller,
              decoration: InputDecoration(
                hintText: 'Name'
              ),
            ),
            TextField(
              controller: detail,
              decoration: InputDecoration(
                hintText: 'Details'
              ),
            ),
            RaisedButton(
                color: Colors.green,
                child: Text('Register'),

                onPressed: new_doctor, ),
            Text(response),


          ],
        ),
      ),
    );

  }
}

