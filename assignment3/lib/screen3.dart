import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
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
                margin: EdgeInsets.all(5),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Color(0xfff0f0f0),
                ),
                width: 600,
                child: Center(child: Text("Username")),
              ),
              SizedBox(
                height: 10,
              ),
              Text("History"),
              ListTile(
                leading: Image.asset('img1.jpg'),
                title: Text("Iphone 12"),
                subtitle: Text(
                  "23 Reviews",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              ListTile(
                leading: Image.asset('img2.jpg'),
                title: Text("Note 20 Ultra"),
                subtitle: Text(
                  "23 Reviews",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              ListTile(
                leading: Image.asset('img3.jpg'),
                title: Text("Ipad"),
                subtitle: Text(
                  "23 Reviews",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              ListTile(
                leading: Image.asset('img4.jpg'),
                title: Text("MacBook"),
                subtitle: Text(
                  "23 Reviews",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              ListTile(
                leading: Image.asset('img5.jpg'),
                title: Text("Gaming Pc"),
                subtitle: Text(
                  "23 Reviews",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
