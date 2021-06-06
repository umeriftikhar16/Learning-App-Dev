import 'package:flutter/material.dart';
import 'screen2.dart';
import 'screen3.dart';

void main() {
  //runApp(MyApp());
  //runApp(Screen2());
  runApp(Screen3());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
                child: Text(
              "ECOMMERCE APP UI",
              style: TextStyle(color: Colors.black),
            )),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150,
                  width:600,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: new DecorationImage(
                      alignment: Alignment.topLeft,
                      image: ExactAssetImage('img1.jpg'),
                      fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Column(children: [
                      Text("Iphone 12",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("20 Pieces",style: TextStyle(fontSize:12),),
                      Text("Rs.190000",style: TextStyle(fontSize:12),),
                      Text("Quantity:1",style: TextStyle(fontSize:12),),
                    ],),
                  ),
                  Container(
                  height: 150,
                  width:600,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: new DecorationImage(
                      alignment: Alignment.topLeft,
                      image: ExactAssetImage('img2.jpg'),
                      fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Column(children: [
                      Text("Note 20 Ultra",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("10 Pieces",style: TextStyle(fontSize:12),),
                      Text("Rs.210000",style: TextStyle(fontSize:12),),
                      Text("Quantity:1",style: TextStyle(fontSize:12),),
                    ],),
                  ),
                  Container(
                  height: 150,
                  width:600,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: new DecorationImage(
                      alignment: Alignment.topLeft,
                      image: ExactAssetImage('img3.jpg'),
                      fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Column(
                    
                      children: [
                      Text("Ipad",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("30 Pieces",style: TextStyle(fontSize:12),),
                      Text("Rs.110000",style: TextStyle(fontSize:12),),
                      Text("Quantity:1",style: TextStyle(fontSize:12),),
                    ],),
                  ),
                  Container(
                  height: 150,
                  width:600,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: new DecorationImage(
                      alignment: Alignment.topLeft,
                      image: ExactAssetImage('img4.jpg'),
                      fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Column(children: [
                      Text("MacBook",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("15 Pieces",style: TextStyle(fontSize:12),),
                      Text("Rs.650000",style: TextStyle(fontSize:12),),
                      Text("Quantity:1",style: TextStyle(fontSize:12),),
                    ],),
                  ),
                  Container(
                  height: 150,
                  width:600,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: new DecorationImage(
                      alignment: Alignment.topLeft,
                      image: ExactAssetImage('img5.jpg'),
                      fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Column(children: [
                      Text("Gaming Pc",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("20 Pieces",style: TextStyle(fontSize:12),),
                      Text("Rs.230000",style: TextStyle(fontSize:12),),
                      Text("Quantity:1",style: TextStyle(fontSize:12),),
                    ],),
                  ),
              ],
            ),
          )),
    );
  }
}
