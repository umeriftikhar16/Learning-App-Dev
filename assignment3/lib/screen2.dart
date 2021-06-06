import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
          body: 
          SingleChildScrollView(
            child: Column(
              children:[
                SizedBox(height: 40,),
                Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('img6.png'),
                ),
                Column(children: [
                  Text("User",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                  Text("abc@gmail.com",style: TextStyle(fontSize:12),),
                  SizedBox(height:20),
                  Text("Logout",style: TextStyle(fontSize:12,color:Colors.purple),),
                  ],)
                ],),
                SizedBox(height: 20,),
                Text("Account Information",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                ListTile(title: Text("Full Name"),
                subtitle: Text("User",style: TextStyle(fontSize: 12),),),
                ListTile(title: Text("Email"),
                subtitle: Text("abc@gmail.com",style: TextStyle(fontSize: 12),),),
                ListTile(title: Text("Address"),
                subtitle: Text("xyz",style: TextStyle(fontSize: 12),),),
                ListTile(title: Text("Gender"),
                subtitle: Text("Male",style: TextStyle(fontSize: 12),),),
                ListTile(title: Text("Date of Birth"),
                subtitle: Text("10-10-2000",style: TextStyle(fontSize: 12),),),
              ], 
            ),
          ),
       ),
    );
  }
}