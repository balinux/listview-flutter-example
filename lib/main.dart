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
          // Search Menu

          // Our Product
          SizedBox(
            height: 47,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                  child: Text("Filter"),
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
                      child: Text("${categories[index]}"),
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
            width: MediaQuery.of(context).size.width - 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 50,
                  width: 200,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Entry A')),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Entry A')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Entry A')),
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
