import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Man Shoe',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> categories = [
    "Popular",
    "InComing",
    "New Collection",
    "OOTD BUMI"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xFFFBFAFF),
      margin: EdgeInsets.only(top: 50, left: 20),
      child: Column(
        children: [
          // Row Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // menu button
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    color: Color(0XFFFCFFF6),
                    borderRadius: BorderRadius.circular(10)),
                child: Image(
                  image: AssetImage('assets/images/icon-menu.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Image(
                  image: AssetImage('assets/images/profile-image.png'),
                ),
                height: 45,
                width: 45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
              ),
            ],
          ),
          // Row Header

          // Search Menu
          Container(
            margin: EdgeInsets.only(right: 20, top: 47),
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 4,
                  blurRadius: 3,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextField(
                decoration: const InputDecoration(
                    icon: Icon(
                      Icons.search,
                      color: Color(0xFFC8C8D9),
                    ),
                    border: InputBorder.none,
                    hintText: 'Search...'),
              ),
            ),
          ),
          // Search Menu

          // Our Product
          SizedBox(
            height: 47,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Our",
                    style: TextStyle(fontSize: 24, color: Color(0xFF424490)),
                  ),
                  Text("Products",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF424490))),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Filter",
                    style: TextStyle(color: Color(0xFF3E478A)),
                  ),
                ),
              )
            ],
          ),
          // Our Product

          // category button
          SizedBox(
            height: 47,
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(right: 50),
            // color: Colors.amber,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(right: 20),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "${categories[index]}",
                        style: TextStyle(color: Color(0xFF3E478A)),
                      ),
                    ),
                  );
                }),
          ),
          // category button

          // Card List Sepatu
          SizedBox(
            height: 47,
          ),
          Container(
            height: 283,
            // width: MediaQuery.of(context).size.width - 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // CARD
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 5, right: 30),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200].withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    // border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      // 1. ICON LOVE
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(top: 20, right: 20),
                          child: Icon(
                            Icons.favorite_border,
                            color: Color(0xFFC8C8D9),
                          ),
                        ),
                      ),
                      // 1. ICON LOVE

                      // 2. IMAGE REVIEW
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 110,
                        // color: Colors.blue,
                        margin: EdgeInsets.only(top: 10),
                        child: Image(
                          image: AssetImage('assets/images/jordan-mars.png'),
                        ),
                      ),
                      // 2. IMAGE REVIEW

                      // title
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text('Jordan Mars',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                      // title

                      // subtitle
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text('Men Shoes',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF9797AD))),
                      ),
                      // subtitle

                      // price
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text('\$150',
                            style: TextStyle(
                                fontSize: 18, color: Color(0XFF343434))),
                      ),
                      // price
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 5, right: 30),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200].withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    // border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      // 1. ICON LOVE
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(top: 20, right: 20),
                          child: Icon(
                            Icons.favorite_border,
                            color: Color(0xFFC8C8D9),
                          ),
                        ),
                      ),
                      // 1. ICON LOVE

                      // 2. IMAGE REVIEW
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 110,
                        // color: Colors.blue,
                        margin: EdgeInsets.only(top: 10),
                        child: Image(
                          image: AssetImage('assets/images/jordan-pluto.png'),
                        ),
                      ),
                      // 2. IMAGE REVIEW

                      // title
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text('Jordan Pluto',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                      // title

                      // subtitle
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text('Men Shoes',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF9797AD))),
                      ),
                      // subtitle

                      // price
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text('\$150',
                            style: TextStyle(
                                fontSize: 18, color: Color(0XFF343434))),
                      ),
                      // price
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 5, right: 30),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200].withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    // border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      // 1. ICON LOVE
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(top: 20, right: 20),
                          child: Icon(
                            Icons.favorite_border,
                            color: Color(0xFFC8C8D9),
                          ),
                        ),
                      ),
                      // 1. ICON LOVE

                      // 2. IMAGE REVIEW
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 110,
                        // color: Colors.blue,
                        margin: EdgeInsets.only(top: 10),
                        child: Image(
                          image: AssetImage('assets/images/jordan-uranus.png'),
                        ),
                      ),
                      // 2. IMAGE REVIEW

                      // title
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text('Jordan Uranus',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                      // title

                      // subtitle
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text('Men Shoes',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF9797AD))),
                      ),
                      // subtitle

                      // price
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text('\$150',
                            style: TextStyle(
                                fontSize: 18, color: Color(0XFF343434))),
                      ),
                      // price
                    ],
                  ),
                ),
              ],
            ),
          )
          // Card List Sepatu
        ],
      ),
    ));
  }
}
