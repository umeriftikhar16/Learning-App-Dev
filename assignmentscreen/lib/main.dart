import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> lst = [1, 2, 3, 4, 5];
    List<dynamic> name = [
      "Iphone 12",
      "Note 20 Ultra",
      "Ipad",
      "MacBook",
      "Gaming Pc"
    ];
    List<dynamic> imgs = [
      'img1.jpg',
      'img2.jpg',
      'img3.jpg',
      'img4.jpg',
      'img5.jpg'
    ];
    List<dynamic> rev = ["2", "3", "7", "4", "8"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "ECOMMERCE APP UI",
              style: TextStyle(color: Colors.black),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Items",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text("View More",
                      style: TextStyle(color: Colors.purple, fontSize: 14)),
                ],
              ),
              new SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      height: 230,
                      width: 230,
                      child: mtile(name[0], imgs[0], rev[0])),
                  SizedBox(width: 3),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      height: 230,
                      width: 230,
                      child: mtile(name[1], imgs[1], rev[1])),
                  SizedBox(width: 3),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      height: 230,
                      width: 230,
                      child: mtile(name[2], imgs[2], rev[2])),
                  SizedBox(width: 3),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      height: 230,
                      width: 230,
                      child: mtile(name[3], imgs[3], rev[3])),
                  SizedBox(width: 3),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      height: 230,
                      width: 230,
                      child: mtile(name[4], imgs[4], rev[4])),
                ]),
              ),
              Row(
                children: [
                  Text("More Categories",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              new SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 50,
                      width: 100,
                      child: Row(
                        children: [
                          Icon(Icons.attribution_outlined),
                          Text("Clothing")
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 50,
                      width: 100,
                      child: Row(
                        children: [Icon(Icons.power), Text("Electric")],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 50,
                      width: 100,
                      child: Row(
                        children: [Icon(Icons.home_filled), Text("Household")],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 50,
                      width: 100,
                      child: Row(
                        children: [Icon(Icons.forward), Text("Others")],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Items",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text("View More",
                      style: TextStyle(color: Colors.purple, fontSize: 14)),
                ],
              ),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: List.generate(lst.length, (index) {
                  return Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(border: Border.all()),
                    child: tile(name[index], imgs[index], rev[index]),
                  );
                }),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
          ],
          selectedItemColor: Colors.purple,
        ),
      ),
    );
  }
}

Widget tile(String pname, String pimg, String revv) {
  return Column(
    children: [
      Container(
        height: 180,
        width: 150,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          image: new DecorationImage(
            alignment: Alignment.topCenter,
            image: ExactAssetImage('$pimg'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "$pname",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "$revv Reviews",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget mtile(String pname, String pimg, String revv) {
  return Column(
    children: [
      Container(
        height: 210,
        width: 170,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          image: new DecorationImage(
            alignment: Alignment.topCenter,
            image: ExactAssetImage('$pimg'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "$pname",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "$revv Reviews",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    ],
  );
}
