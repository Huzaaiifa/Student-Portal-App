
import 'package:flutter/material.dart';
import 'dart:math' as math;import 'dart:math' as math;import 'dart:math' as math;import 'dart:math' as math;import 'dart:math' as math;

class attpageWidget extends StatelessWidget {
  final String rn;

  attpageWidget({required this.rn});

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator MarkspageWidget - FRAME
    return Container(
        width: 360,
        height: 640,
        decoration: BoxDecoration(
          color : Color.fromRGBO(231, 235, 208, 1),
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
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        boxShadow : [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0,4),
                            blurRadius: 4
                        )],
                        color : Color.fromRGBO(48, 49, 44, 1),
                      )
                  )
              ),Positioned(
                  top: 232,
                  left: 30,
                  child: Container(
                      width: 297,
                      height: 27,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        color : Color.fromRGBO(215, 219, 195, 1),
                      )
                  )
              ),Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 360,
                      height: 117,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(0, 0, 0, 1),
                      )
                  )
              ),Positioned(
                  top: 44,
                  left: 116,
                  child: Text('Attendance', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Jost',
                      fontSize: 24,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 54,
                  left: 21,
                  child: Container(
                      width: 19,
                      height: 13,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 19,
                                    height: 2.0526316165924072,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    )
                                )
                            ),Positioned(
                                top: 10.947368621826172,
                                left: 0,
                                child: Container(
                                    width: 19,
                                    height: 2.0526316165924072,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    )
                                )
                            ),Positioned(
                                top: 5.473684310913086,
                                left: 0,
                                child: Container(
                                    width: 19,
                                    height: 2.0526316165924072,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    )
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 180,
                  left: 120,
                  child: Text('Software Engineering', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Jost',
                      fontSize: 12,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 192,
                  left: 248,
                  child: Transform.rotate(
                    angle: 89.99999999999999 * (math.pi / 180),
                    child: Container(
                        width: 15,
                        height: 16,
                        decoration: BoxDecoration(
                          image : DecorationImage(
                              image: AssetImage('assets/images/Downbutton.png'),
                              fit: BoxFit.fitWidth
                          ),
                        )
                    ),
                  )
              ),Positioned(
                  top: 129,
                  left: 135,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                      boxShadow : [BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0,3),
                          blurRadius: 4
                      )],
                      color : Color.fromRGBO(48, 49, 44, 1),
                      border : Border.all(
                        color: Color.fromRGBO(254, 254, 254, 1),
                        width: 1,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Text('Summer 1878', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Jost',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),),

                      ],
                    ),
                  )
              ),Positioned(
                  top: 275,
                  left: 31,
                  child: Container(
                      width: 297,
                      height: 293,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        color : Color.fromRGBO(225, 241, 151, 1),
                      )
                  )
              ),Positioned(
                  top: 149,
                  left: 224,
                  child: Transform.rotate(
                    angle: 89.99999999999999 * (math.pi / 180),
                    child: Container(
                        width: 14,
                        height: 13,
                        decoration: BoxDecoration(
                          image : DecorationImage(
                              image: AssetImage('assets/images/Downbutton.png'),
                              fit: BoxFit.fitWidth
                          ),
                        )
                    ),
                  )
              ),Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    decoration: BoxDecoration(

                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(

                          ),
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,

                            children: <Widget>[
                              Text('9:30', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(247, 250, 248, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  letterSpacing: 0.25,
                                  fontWeight: FontWeight.normal,
                                  height: 1.4285714285714286
                              ),), SizedBox(width : 8),
                              Text('Tue, Jul 19', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  letterSpacing: 0.25,
                                  fontWeight: FontWeight.normal,
                                  height: 1.4285714285714286
                              ),),

                            ],
                          ),
                        ), SizedBox(width : 4),
                        Container(
                          decoration: BoxDecoration(

                          ),
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,

                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(

                                ),
                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,

                                  children: <Widget>[
                                    SizedBox(width : 2),


                                  ],
                                ),
                              ), SizedBox(width : 0),
                              Container(
                                decoration: BoxDecoration(

                                ),
                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,

                                  children: <Widget>[
                                    SizedBox(width : 2),
                                    Text('Until 10:00 AM', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        letterSpacing: 0.25,
                                        fontWeight: FontWeight.normal,
                                        height: 1.4285714285714286
                                    ),),

                                  ],
                                ),
                              ),

                            ],
                          ),
                        ), SizedBox(width : 4),
                        Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color : Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(
                                children: <Widget>[
                                  Positioned(
                                      top: -3,
                                      left: -3,
                                      child: Container(
                                          width: 18,
                                          height: 18,
                                          decoration: BoxDecoration(
                                            borderRadius : BorderRadius.only(
                                              topLeft: Radius.circular(100),
                                              topRight: Radius.circular(100),
                                              bottomLeft: Radius.circular(100),
                                              bottomRight: Radius.circular(100),
                                            ),
                                            color : Color.fromRGBO(0, 0, 0, 1),
                                          )
                                      )
                                  ),
                                ]
                            )
                        ),

                      ],
                    ),
                  )
              ),Positioned(
                  top: 281,
                  left: 54,
                  child: Text('Attendance:', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(5, 5, 5, 1),
                      fontFamily: 'Jost',
                      fontSize: 14,
                      letterSpacing: 0.25,
                      fontWeight: FontWeight.normal,
                      height: 1.4285714285714286
                  ),)
              ),Positioned(
                  top: 205,
                  left: 39,
                  child: Text('Attendance Percentage:', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(5, 5, 5, 1),
                      fontFamily: 'Jost',
                      fontSize: 12,
                      letterSpacing: 0.25,
                      fontWeight: FontWeight.normal,
                      height: 1.6666666666666667
                  ),)
              ),Positioned(
                  top: 320,
                  left: 47,
                  child: Container(
                      width: 266,
                      height: 232,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(14),
                        ),
                        color : Color.fromRGBO(48, 49, 44, 0.12999999523162842),
                      )
                  )
              ),Positioned(
                  top: 320,
                  left: 47,
                  child: Container(
                      width: 266,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                        color : Color.fromRGBO(158, 169, 106, 1),
                      )
                  )
              ),Positioned(
                  top: 392,
                  left: 47,
                  child: Divider(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      thickness: 1
                  )

              ),Positioned(
                  top: 424,
                  left: 47,
                  child: Divider(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      thickness: 1
                  )

              ),Positioned(
                  top: 456,
                  left: 47,
                  child: Divider(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      thickness: 1
                  )

              ),Positioned(
                  top: 488,
                  left: 47,
                  child: Divider(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      thickness: 1
                  )

              ),Positioned(
                  top: 520,
                  left: 47,
                  child: Divider(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      thickness: 1
                  )

              ),Positioned(
                  top: 552,
                  left: 100,
                  child: Transform.rotate(
                    angle: 90.00000000000001 * (math.pi / 180),
                    child: Divider(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        thickness: 1
                    )
                    ,
                  )
              ),Positioned(
                  top: 552,
                  left: 157,
                  child: Transform.rotate(
                    angle: 90.00000000000001 * (math.pi / 180),
                    child: Divider(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        thickness: 1
                    )
                    ,
                  )
              ),Positioned(
                  top: 552,
                  left: 237,
                  child: Transform.rotate(
                    angle: 90.00000000000001 * (math.pi / 180),
                    child: Divider(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        thickness: 1
                    )
                    ,
                  )
              ),Positioned(
                top: 334,
                left: 54,
                child: Text(
                  'Lecture no.',
                  textAlign: TextAlign.center, // Align the text to the center
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Jost',
                    fontSize: 11.5,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
              ),Positioned(
                top: 335,
                left: 127,
                child: Text(
                  'Date',
                  textAlign: TextAlign.center, // Align the text to the center
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Jost',
                    fontSize: 11.5,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
              ),Positioned(
                  top: 334,
                  left: 166,
                  child: Text('Duration (hr)', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Jost',
                      fontSize: 11.5,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.2173913043478262
                  ),)
              ),Positioned(
                  top: 336,
                  left: 241,
                  child: Text('Presence', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Jost',
                      fontSize: 11.5,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 590,
                  left: 132,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                      color : Color.fromRGBO(0, 0, 0, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 37, vertical: 2),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Text('Raise Query', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Jost',
                            fontSize: 11,
                            letterSpacing: 0.25,
                            fontWeight: FontWeight.normal,
                            height: 1.8181818181818181
                        ),),

                      ],
                    ),
                  )
              ),Positioned(
                  top: 232,
                  left: 30,
                  child: Container(
                      width: 255,
                      height: 27,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        color : Color.fromRGBO(151, 255, 134, 1),
                      )
                  )
              ),
            ]
        )
    );
  }
}