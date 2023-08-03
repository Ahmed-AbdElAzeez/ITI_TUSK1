// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SafeArea(
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Color.fromARGB(255, 111, 61, 187),
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      Text(
                        "Log in",
                        style: TextStyle(fontSize: 35, fontFamily: "font"),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66),
                        ),
                        width: 266,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.purple[800],
                              ),
                              hintText: "Your Email :",
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66),
                        ),
                        width: 266,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              suffix: Icon(
                                Icons.visibility,
                                color: Colors.purple[900],
                              ),
                              icon: Icon(
                                Icons.lock,
                                color: Colors.purple[800],
                                size: 19,
                              ),
                              hintText: "Password :",
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                            Navigator.pushNamed(context, "/h");
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 106, vertical: 10)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: Text(
                          "login",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/");
                        },
                        child: Text(
                          "Forgot your password?",
                          style: TextStyle(fontSize: 20, fontFamily: "font"),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  child: Image.asset("assets/images/main_top.png", width: 111),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child:
                      Image.asset("assets/images/login_bottom.png", width: 111),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
