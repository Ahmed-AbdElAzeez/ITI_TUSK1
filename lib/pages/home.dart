import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                      height: 170,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/");
                          },
                          child: Text(
                            'Back',
                            style: TextStyle(
                                color: Color(0xff5DB075),
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Text(
                          'Feed',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Filter',
                          style: TextStyle(
                              color: Color(0xff5DB075),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      onChanged: (value) {
                        print(value);
                      },
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          fillColor: Color(0xffF6F6F6),
                          filled: true,
                          hintText: "search",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(136, 133, 133, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50))),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 0,
                child: Image.asset("assets/images/main_top.png", width: 111),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset("assets/images/main_bottom.png", width: 111),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
