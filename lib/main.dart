import 'package:flutter/material.dart';
import 'package:fuelapplication/Homepageoffuelapp.dart';
import 'package:fuelapplication/loginpage.dart';
import 'package:fuelapplication/userdashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentindex = 0;
  final pages = [Homeoffuelapp(), Loginpage(), UserDashBoard()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.redAccent,
                icon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                backgroundColor: Colors.redAccent,
                icon: Icon(Icons.signpost),
                label: 'Sign in'),
            BottomNavigationBarItem(
                backgroundColor: Colors.redAccent,
                icon: Icon(Icons.dashboard),
                label: 'Dashboard'),
          ],
          onTap: (value) {
            setState(() {
              _currentindex = value;
            });
          },
        ),
        body: pages[_currentindex]);
  }
}
