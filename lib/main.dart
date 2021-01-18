import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:infigon/Components/custom_text.dart';
import 'package:infigon/shapeClippers/circle_clipper.dart';
import 'package:infigon/shapeClippers/clipper_left.dart';
import 'package:infigon/shapeClippers/clipper_top.dart';
import 'package:infigon/utils/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: _width * 0.025,
                vertical: _width * 0.025,
              ),
              color: Colors.white,
              child: Stack(
                children: [
                  Container(color: Colors.white),
                  Positioned(
                    right: 0,
                    child: ClipPath(
                      clipper: ClipperTop(),
                      child: Container(
                        color: Colors.blueAccent,
                        width: _width * 0.6,
                        height: _width * 0.18,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: ClipPath(
                      clipper: ClipperLeft(),
                      child: Container(
                        color: Colors.blueAccent.withOpacity(0.3),
                        width: _width * 0.40,
                        height: _width * 0.27,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.only(left: 45,bottom: 10,top:45),
                      width: _width * 0.60,
                      height: _width * 0.36,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(radius: 70,child: Image.asset("assets/images/avatar1.png"),),
                                CircleAvatar(radius: 70,child: Image.asset("assets/images/avatar2.png"),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(radius: 70,child: Image.asset("assets/images/avatar3.png"),),
                                CircleAvatar(radius: 70,child: Image.asset("assets/images/avatar4.png"),),
                                CircleAvatar(radius: 70,child: Image.asset("assets/images/avatar5.png"),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(radius: 70,child: Image.asset("assets/images/avatar6.png"),),
                                CircleAvatar(radius: 70,child: Image.asset("assets/images/avatar7.png"),),
                              ],
                            ),
                          ],
                        ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: ClipPath(
                      clipper: ClipperSemiCircle(),
                      child: Container(
                        color: Colors.blueAccent.withOpacity(0.2),
                        width: _width * 0.60,
                        height: _width * 0.36,
          
                      ),
                    ),
                  ),
                  LogoAndText(width: _width),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LogoAndText extends StatelessWidget {
  const LogoAndText({
    Key key,
    @required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(_width * 0.025),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: _width * 0.24,
                  child: Image.asset("assets/images/infigon.png")),
              IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 37,
                    color: Colors.white,
                  ),
                  onPressed: () {})
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            "WE ARE HERE TO HELP YOU",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                fontSize: 12),
          ),
          SizedBox(
            height: 15,
          ),
          CustomText(text: "EXPLORATION TAB", size: 45),
          SizedBox(
            height: 9,
          ),
          CustomText(text: "FIND YOUR CAREER", size: 18),
          SizedBox(
            height: _width * 0.09,
          ),
          Row(
            children: [
              CustomText(text: "60", size: 45),
              Text(
                "+",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 41),
              ),
            ],
          ),
          CustomText(text: "CAREER OPTIONS", size: 12),
          SizedBox(
            height: _width * 0.03,
          ),
          Container(
            width: _width * 0.15,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: Colors.blueAccent[700],
                  fontSize: 15),
            ),
          ),
          SizedBox(
            height: _width * 0.06,
          ),
          Row(
            children: [
              CustomText(text: "EXPLORATION TAB", size: 16),
              Icon(
                Icons.arrow_forward_outlined,
                color: Colors.blueAccent[700],
              )
            ],
          ),
        ],
      ),
    );
  }
}
