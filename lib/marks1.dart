import 'package:flutter/material.dart';
import 'dart:math' as math;

class MarkspageWidget extends StatefulWidget {
  final String rn;

  MarkspageWidget({required this.rn});

  @override
  _MarkspageWidgetState createState() => _MarkspageWidgetState(rn:rn);
}

class _MarkspageWidgetState extends State<MarkspageWidget> {


  final String rn;

  _MarkspageWidgetState({required this.rn});

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator MarkspageWidget - FRAME

    return Container(
      width: 360,
      height: 640,
      decoration: BoxDecoration(
        color: Color.fromRGBO(231, 235, 208, 1),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 171,
            left: 88,
            child: Container(
              width: 183,
              height: 27,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  )
                ],
                color: Color.fromRGBO(48, 49, 44, 1),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 360,
              height: 117,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          Positioned(
            top: 44,
            left: 145,
            child: Text(
              'Marks',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Jost',
                fontSize: 24,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 54,
            left: 21,
            child: Container(
              width: 19,
              height: 13,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 5.5,
                    left: 0,
                    child: Container(
                      width: 19,
                      height: 2.05,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 19,
                      height: 2.05,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10.95,
                    left: 0,
                    child: Container(
                      width: 19,
                      height: 2.05,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 175,
            left: 100,
            child: Text(
              'Software Engineering',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Jost',
                fontSize: 12,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 192,
            left: 248,
            child: Transform.rotate(
              angle: 90 * (math.pi / 180),
              child: Container(
                width: 15,
                height: 16,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Downbutton.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 129,
            left: 113,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 3),
                    blurRadius: 4,
                  )
                ],
                color: Color.fromRGBO(48, 49, 44, 1),
                border: Border.all(
                  color: Color.fromRGBO(254, 254, 254, 1),
                  width: 1,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Summer 1878',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Jost',
                      fontSize: 12,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 214,
            left: 31,
            child: Container(
              width: 297,
              height: 232,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromRGBO(225, 241, 151, 1),
              ),
            ),
          ),
          Positioned(
            top: 467,
            left: 31,
            child: Container(
              width: 297,
              height: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromRGBO(48, 49, 44, 1),
              ),
            ),
          ),
          Positioned(
            top: 470,
            left: 66,
            child: Text(
              'Assignments',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Jost',
                fontSize: 14,
                letterSpacing: 0.25,
                fontWeight: FontWeight.normal,
                height: 1.4285714285714286,
              ),
            ),
          ),
          Positioned(
            top: 506.88,
            left: 284,
            child: Transform.rotate(
              angle: 90 * (math.pi / 180),
              child: Container(
                width: 33.88,
                height: 27.38,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Downbutton.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 149,
            left: 224,
            child: Transform.rotate(
              angle: 90 * (math.pi / 180),
              child: Container(
                width: 14,
                height: 13,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Downbutton.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 532,
            left: 31,
            child: Container(
              width: 297,
              height: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromRGBO(48, 49, 44, 1),
              ),
            ),
          ),
          Positioned(
            top: 535,
            left: 66,
            child: Text(
              'Grand Total Marks',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Jost',
                fontSize: 14,
                letterSpacing: 0.25,
                fontWeight: FontWeight.normal,
                height: 1.4285714285714286,
              ),
            ),
          ),
          Positioned(
            top: 571.88,
            left: 284,
            child: Transform.rotate(
              angle: 90 * (math.pi / 180),
              child: Container(
                width: 33.88,
                height: 27.38,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Downbutton.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          '9:30',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(247, 250, 248, 1),
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            letterSpacing: 0.25,
                            fontWeight: FontWeight.normal,
                            height: 1.4285714285714286,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Tue, Jul 19',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            letterSpacing: 0.25,
                            fontWeight: FontWeight.normal,
                            height: 1.4285714285714286,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    decoration: BoxDecoration(),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(),
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(width: 2),
                            ],
                          ),
                        ),
                        SizedBox(width: 0),
                        Container(
                          decoration: BoxDecoration(),
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(width: 2),
                              Text(
                                'Until 10:00 AM',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  letterSpacing: 0.25,
                                  fontWeight: FontWeight.normal,
                                  height: 1.4285714285714286,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 3,
                          left: 3,
                          child: Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 220,
            left: 54,
            child: Text(
              'Quizzes:',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(5, 5, 5, 1),
                fontFamily: 'Jost',
                fontSize: 14,
                letterSpacing: 0.25,
                fontWeight: FontWeight.normal,
                height: 1.4285714285714286,
              ),
            ),
          ),
          Positioned(
            top: 227,
            left: 306,
            child: Transform.rotate(
              angle: -90 * (math.pi / 180),
              child: Container(
                width: 19,
                height: 17,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Nextpage.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 259,
            left: 47,
            child: Container(
              width: 266,
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14),
                  bottomLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
                color: Color.fromRGBO(48, 49, 44, 0.13),
              ),
            ),
          ),
          Positioned(
            top: 259,
            left: 47,
            child: Container(
              width: 266,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
                color: Color.fromRGBO(158, 169, 106, 1),
              ),
            ),
          ),
          Positioned(
            top: 425,
            left: 283,
            child: Transform.rotate(
              angle: 90 * (math.pi / 180),
              child: Divider(
                color: Color.fromRGBO(0, 0, 0, 1),
                thickness: 1,
              ),
            ),
          ),
          Positioned(
            top: 331,
            left: 47,
            child: Divider(
              color: Color.fromRGBO(0, 0, 0, 1),
              thickness: 1,
            ),
          ),
          Positioned(
            top: 363,
            left: 47,
            child: Divider(
              color: Color.fromRGBO(0, 0, 0, 1),
              thickness: 1,
            ),
          ),
          Positioned(
            top: 395,
            left: 47,
            child: Divider(
              color: Color.fromRGBO(0, 0, 0, 1),
              thickness: 1,
            ),
          ),
          Positioned(
            top: 425,
            left: 88,
            child: Transform.rotate(
              angle: 90 * (math.pi / 180),
              child: Divider(
                color: Color.fromRGBO(0, 0, 0, 1),
                thickness: 1,
              ),
            ),
          ),
          Positioned(
            top: 425,
            left: 153,
            child: Transform.rotate(
              angle: 90 * (math.pi / 180),
              child: Divider(
                color: Color.fromRGBO(0, 0, 0, 1),
                thickness: 1,
              ),
            ),
          ),
          Positioned(
            top: 425,
            left: 219,
            child: Transform.rotate(
              angle: 90 * (math.pi / 180),
              child: Divider(
                color: Color.fromRGBO(0, 0, 0, 1),
                thickness: 1,
              ),
            ),
          ),
          Positioned(
            top: 273,
            left: 54,
            child: Text(
              'Sr no.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Jost',
                fontSize: 11.5,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 273,
            left: 93,
            child: Text(
              'Weightage',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Jost',
                fontSize: 11.5,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 267,
            left: 161,
            child: Text(
              'Obtained marks',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Jost',
                fontSize: 11.5,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.2173913043478262,
              ),
            ),
          ),
          Positioned(
            top: 273,
            left: 222,
            child: Text(
              'Total marks',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Jost',
                fontSize: 11.5,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 273,
            left: 287,
            child: Text(
              'Aver',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Jost',
                fontSize: 11.5,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 597,
            left: 132,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 37, vertical: 2),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Raise Query',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Jost',
                      fontSize: 11,
                      letterSpacing: 0.25,
                      fontWeight: FontWeight.normal,
                      height: 1.8181818181818181,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
