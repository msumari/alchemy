import 'package:flutter/material.dart';
import 'package:sweden_embassy/connect.dart';

class Telepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Telepagestate();
  }

}
class Doctor{
  String name ;
  String detail;
  Doctor(this.name,this.detail);
}

  class Telepagestate extends State<Telepage>{
List <Doctor> doctor = [];

  Future<void>refreshdoc()async{
    var result = await http_get('doctor');
    if(result.ok){

      setState(() {
        doctor.clear();
        var doc = result.data as List<dynamic>;
        doc.forEach((doc){
          doctor.add(Doctor(
              doc['name'],
              doc['detail']));

        });
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: refreshdoc,
        child: ListView.separated(
            itemBuilder: (context, i)=>ListTile(
            leading: IconButton(icon: Icon(Icons.person), onPressed: (){}),
            title:Text( doctor[i].name),
            subtitle:Text( doctor[i].detail),
              trailing: IconButton(icon: Icon(Icons.call), onPressed: (){},)
            ),
            separatorBuilder: (context,i)=>Divider(),
            itemCount: doctor.length
        ),

      ),
    );

  }

}

