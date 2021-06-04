import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.1),
                  child: Container(
                    height: 85,
                    width: 85,
                    child: Image(
                      image: AssetImage("assets/icon.png"),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: height * 0.035),
                  child: Text(
                    "Sign in to GitHub",
                    style: TextStyle(
                      fontSize: width * 0.085,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.05),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF6F8FA),
                    ),
                    height: height * 0.38,
                    width: width * 0.8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: height * 0.04, left: width * 0.04),
                          child: Text(
                            "Username or email address",
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: height * 0.02, left: width * 0.04),
                          child: Container(
                            height: height * 0.05,
                            width: width * 0.7,
                            alignment: Alignment.center,
                            child: TextField(
                              style: TextStyle(
                                fontSize: height * 0.025,
                              ),
                              cursorHeight: height * 0.035,
                              cursorColor: Colors.black45,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                contentPadding: EdgeInsets.only(
                                    bottom: height * 0.025,
                                    left: width * 0.035),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: width * 0.04,
                              top: height * 0.02,
                              right: width * 0.04),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Password",
                                style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Forgot password?",
                                style: TextStyle(
                                  fontSize: width * 0.035,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: height * 0.02, left: width * 0.04),
                          child: Container(
                            height: height * 0.05,
                            width: width * 0.7,
                            alignment: Alignment.center,
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(
                                fontSize: height * 0.025,
                              ),
                              cursorHeight: height * 0.035,
                              cursorColor: Colors.black45,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black12,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                contentPadding: EdgeInsets.only(
                                    bottom: height * 0.025,
                                    left: width * 0.035),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.lightBlue,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: height * 0.04, left: width * 0.04),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: height * 0.05,
                            width: width * 0.7,
                            child: Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: width * 0.045,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.03),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: height * 0.08,
                  width: width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "New to GitHub? ",
                        style: TextStyle(
                            fontSize: width * 0.045,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Create an account.",
                        style: TextStyle(
                          fontSize: width * 0.045,
                          fontWeight: FontWeight.w300,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: height * 0.05, left: width * 0.16),
                  child: Row(
                    children: [
                      Text(
                        "Terms   ",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        "Privacy   ",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        "Security    ",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        "Contact GitHub",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
