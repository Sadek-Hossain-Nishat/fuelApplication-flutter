import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Loginpage());
}

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginMainPage(),
    );
  }
}

class LoginMainPage extends StatefulWidget {
  const LoginMainPage({Key? key}) : super(key: key);

  @override
  State<LoginMainPage> createState() => _LoginMainPageState();
}

class _LoginMainPageState extends State<LoginMainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.4,
                color: Color.fromARGB(218, 163, 4, 52),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: CircleAvatar(
                              backgroundColor: Color.fromARGB(218, 163, 4, 52),
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
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.width * 0.28,
                            color: Color.fromARGB(255, 132, 80, 192),
                            child: Text(
                              "Company name",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.values[8]),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Company images",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.values[4]),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      Text(
                        "About company",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.values[4]),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(218, 163, 4, 52),
                            radius: 20,
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child:
                                    Image.asset('images/bluecircularfan.png')),
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(218, 163, 4, 52),
                            radius: 20,
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child:
                                    Image.asset('images/bluecircularfan.png')),
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(218, 163, 4, 52),
                            radius: 20,
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child:
                                    Image.asset('images/bluecircularfan.png')),
                          )
                        ],
                      )
                    ],
                  ),
                )),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.6,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Text(
                        "Welcome to Company",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.7,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 15, left: 10),
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 7, left: 10),
                                  child: Text(
                                    'User Name',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  padding: EdgeInsets.only(top: 7, left: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter User Name',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 7, left: 10),
                                  child: Text(
                                    'Password',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  padding: EdgeInsets.only(top: 7, left: 10),
                                  child: TextField(
                                    obscureText: true,
                                    obscuringCharacter: '*',
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter Password',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.009,
                            ),
                            ElevatedButton(
                                onPressed: () {}, child: Text('SIGN IN')),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.005,
                            ),
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                  color: Color.fromARGB(255, 94, 182, 255)),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 7, left: 10),
                                  child: Text(
                                    'New User',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 7, left: 10),
                                  child: ElevatedButton(
                                      onPressed: () {}, child: Text('SIGN UP')),
                                )
                              ],
                            ),
                          ],
                        ),
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
