import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:Container(
        height: 140,
       child:
          ListView(
          scrollDirection: Axis.horizontal,
          reverse: true,
          children: <Widget>[

          ClipRRect(
          child:Container(
          width: 140,
          color: Colors.red,
            child:FittedBox(
              fit: BoxFit.cover,
              child:Image.asset('pics/pill-1884775__340.jpg'),
            ),
          ),
           borderRadius: BorderRadius.circular(20.0),
          ),


         ClipRRect(
           child:Container(
          width: 140,
          color: Colors.pink,
            child: FittedBox(
              fit: BoxFit.cover,
              child:Image.asset('pics/pills-384846__340.jpg'),
            ),
           ),
           borderRadius: BorderRadius.circular(20.0),

         ),


         ClipRRect(
           child:Container(
          width:140,
          color: Colors.pinkAccent,
            child: FittedBox(
              fit: BoxFit.cover,
              child:Image.asset('pics/syringe-1884784_640.jpg'),
    ),),
         borderRadius: BorderRadius.circular(20),),


          ClipRRect(
            child:Container(
          width:140,
          color: Colors.yellowAccent,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('pics/pill-3069032__340.jpg'),
          ),
            ),
          borderRadius: BorderRadius.circular(20),),


          ClipRRect(
            child:Container(
          width:140,
          color: Colors.green,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('pics/thermometer-1539191__340.jpg'),
          ),
            ),
          borderRadius: BorderRadius.circular(20),),


          ClipRRect(
            child:Container(
          width:140,
          color: Colors.black,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('pics/coronavirus-4914026__340.jpg'),
          ),
            ),
          borderRadius: BorderRadius.circular(20),),
            ],
          )

          )

    );



  }

}

