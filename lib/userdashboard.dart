import 'dart:ui';

import 'package:flutter/material.dart';

class UserDashBoard extends StatelessWidget {
  const UserDashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepageuserdashboard(),
    );
  }
}

class Homepageuserdashboard extends StatefulWidget {
  const Homepageuserdashboard({Key? key}) : super(key: key);

  @override
  State<Homepageuserdashboard> createState() => _HomepageuserdashboardState();
}

class _HomepageuserdashboardState extends State<Homepageuserdashboard> {
  var listtile = ["Diesel", "Soil", "Clients", "Vehicle"];
  var listcolor = [
    Colors.cyan,
    Color.fromARGB(255, 241, 171, 253),
    Color.fromARGB(255, 241, 171, 253),
    Colors.cyan
  ];
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _key,
      drawer: Drawer(
          child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      )),
      body: Container(
          child: SingleChildScrollView(
        child: Row(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.35,
                color: Colors.lightBlue,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: CircleAvatar(
                              backgroundColor: Colors.lightBlue,
                              radius: 25,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  child:
                                      Image.asset('images/fireimagelogo.png')),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                              top: 3,
                              left: 1,
                            ),
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.24,
                            color: Colors.white,
                            child: Text(
                              "Company name",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.values[8]),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () => _key.currentState?.openDrawer(),
                            icon: Image.asset("images/hamburgericon.png"),
                            iconSize: 25,
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 3,
                          left: 1,
                        ),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.30,
                        color: Colors.white,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Overview",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.values[8]),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () => _key.currentState?.openDrawer(),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.009,
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 3,
                          left: 1,
                        ),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.30,
                        color: Colors.white,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Diesel",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.values[8]),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () => _key.currentState?.openDrawer(),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.009,
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 3,
                          left: 1,
                        ),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.30,
                        color: Colors.white,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Soil",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.values[8]),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () => _key.currentState?.openDrawer(),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.009,
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 3,
                          left: 1,
                        ),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.30,
                        color: Colors.white,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Clients",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.values[8]),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () => _key.currentState?.openDrawer(),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.009,
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 3,
                          left: 1,
                        ),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.30,
                        color: Colors.white,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Vehicle",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.values[8]),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () => _key.currentState?.openDrawer(),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.009,
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 3,
                          left: 1,
                        ),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.30,
                        color: Colors.white,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Reports",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.values[8]),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () => _key.currentState?.openDrawer(),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.009,
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 3,
                          left: 1,
                        ),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.30,
                        color: Colors.white,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Settings",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.values[8]),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () => _key.currentState?.openDrawer(),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.09,
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 3,
                          left: 1,
                        ),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.30,
                        color: Colors.white,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Log out",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.values[8]),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () => _key.currentState?.openDrawer(),
                        ),
                      )
                    ],
                  ),
                )),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.65,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: GridView.count(
                        // Create a grid with 2 columns. If you change the scrollDirection to
                        // horizontal, this produces 2 rows.
                        crossAxisCount: 2,
                        // Generate 100 widgets that display their index in the List.
                        children: List.generate(4, (index) {
                          return Center(
                              child: Card(
                            margin: EdgeInsets.only(top: 20),
                            elevation: 5,
                            color: listcolor[index],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                decoration: BoxDecoration(
                                    color: listcolor[index],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                alignment: Alignment.center,
                                child: Container(
                                  color: Colors.white,
                                  child: Text(
                                    listtile[index],
                                    style: TextStyle(fontSize: 15),
                                  ),
                                )),
                          ));
                        }),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.25,
                              child: Image.asset('images/barchart.png'),
                            ),
                          ),
                          Center(
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.15,
                              child: Text(
                                'Statistics',
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(2),
                            width: MediaQuery.of(context).size.width * 0.33,
                            height: MediaQuery.of(context).size.height * 0.1,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.green),
                              ),
                              child: Text(
                                'Main button',
                                style: TextStyle(color: Colors.green),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                      color:
                                          Color.fromARGB(255, 105, 105, 105)),
                                ),
                                child: Text(
                                  'Smaller button',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 105, 105, 105)),
                                ),
                                onPressed: () {
                                  print('Pressed');
                                },
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    ));
  }
}
