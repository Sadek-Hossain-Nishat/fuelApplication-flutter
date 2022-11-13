import 'package:flutter/material.dart';

class Homeoffuelapp extends StatelessWidget {
  const Homeoffuelapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepageforthispage(),
    );
  }
}

class Homepageforthispage extends StatefulWidget {
  const Homepageforthispage({Key? key}) : super(key: key);

  @override
  State<Homepageforthispage> createState() => _HomepageforthispageState();
}

class _HomepageforthispageState extends State<Homepageforthispage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Welcome to Fuel Management System',
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
        ),
      ),
    ));
  }
}
