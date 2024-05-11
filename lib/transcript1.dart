import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;import 'dart:math' as math;import 'dart:math' as math;import 'dart:math' as math;import 'dart:math' as math;import 'dart:math' as math;

class trspageWidget extends StatefulWidget {
  @override
  trspageWidgetState createState() => trspageWidgetState();
}

class trspageWidgetState extends State<trspageWidget> {
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
          top: 196,
          left: 46,
          child: Container(
              width: 253,
              height: 36,
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
        top: 205,
        left: 73,
        child: Text('CGPA: 3.99', textAlign: TextAlign.left, style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontFamily: 'Jost',
            fontSize: 13,
            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1
        ),)
    ),Positioned(
        top: 205,
        left: 150,
        child: Text('SGPA: 1.20', textAlign: TextAlign.right, style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontFamily: 'Jost',
            fontSize: 13,
            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1
        ),)
    ),Positioned(
        top: 0,
        left: 0,
        child: Container(
            width: 360,
            height: 116,
            decoration: BoxDecoration(
              color : Color.fromRGBO(0, 0, 0, 1),
            )
        )
    ),Positioned(
        top: 44,
        left: 116,
        child: Text('Transcript', textAlign: TextAlign.center, style: TextStyle(
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
        top: 149,
        left: 106,
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
        top: 268,
        left: 29,
        child: Container(
            width: 297,
            height: 280,
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
        top: 170,
        left: 217,
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
        top: 287,
        left: 45,
        child: Container(
            width: 266,
            height: 242,
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
        top: 287,
        left: 45,
        child: SvgPicture.asset(
            'assets/images/rectangle27.svg',
            semanticsLabel: 'rectangle27'
        )
    ),Positioned(
        top: 364,
        left: 47,
        child: Divider(
            color: Color.fromRGBO(0, 0, 0, 1),
            thickness: 1
        )

    ),Positioned(
        top: 395,
        left: 45,
        child: Divider(
            color: Color.fromRGBO(0, 0, 0, 1),
            thickness: 1
        )

    ),Positioned(
        top: 430,
        left: 47,
        child: Divider(
            color: Color.fromRGBO(0, 0, 0, 1),
            thickness: 1
        )

    ),Positioned(
        top: 465,
        left: 47,
        child: Divider(
            color: Color.fromRGBO(0, 0, 0, 1),
            thickness: 1
        )

    ),Positioned(
        top: 495,
        left: 45,
        child: Divider(
            color: Color.fromRGBO(0, 0, 0, 1),
            thickness: 1
        )

    ),Positioned(
        top: 529,
        left: 87,
        child: Transform.rotate(
          angle: 90.00000000000003 * (math.pi / 180),
          child: Divider(
              color: Color.fromRGBO(0, 0, 0, 1),
              thickness: 1
          )
          ,
        )
    ),Positioned(
        top: 528,
        left: 144,
        child: Transform.rotate(
          angle: 90 * (math.pi / 180),
          child: Divider(
              color: Color.fromRGBO(0, 0, 0, 1),
              thickness: 1
          )
          ,
        )
    ),Positioned(
        top: 529,
        left: 200,
        child: Transform.rotate(
          angle: 90.00000000000003 * (math.pi / 180),
          child: Divider(
              color: Color.fromRGBO(0, 0, 0, 1),
              thickness: 1
          )
          ,
        )
    ),Positioned(
        top: 528,
        left: 244,
        child: Transform.rotate(
          angle: 90.00000000000003 * (math.pi / 180),
          child: Divider(
              color: Color.fromRGBO(0, 0, 0, 1),
              thickness: 1
          )
          ,
        )
    ),Positioned(
        top: 527,
        left: 277,
        child: Transform.rotate(
          angle: 90.00000000000003 * (math.pi / 180),
          child: Divider(
              color: Color.fromRGBO(0, 0, 0, 1),
              thickness: 1
          )
          ,
        )
    ),Positioned(
        top: 303,
        left: 52,
        child: Text('Code', textAlign: TextAlign.center, style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'Jost',
            fontSize: 11.5,
            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1
        ),)
    ),Positioned(
        top: 297,
        left: 97,
        child: Text('Course Name', textAlign: TextAlign.center, style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Jost',
        fontSize: 11.5,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
    ),)
    ),Positioned(
    top: 306,
    left: 140,
    child: Text('Section', textAlign: TextAlign.center, style: TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontFamily: 'Jost',
    fontSize: 11.5,
    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
    fontWeight: FontWeight.normal,
    height: 1.2173913043478262
    ),)
    ),Positioned(
    top: 305,
    left: 207,
    child: Text('Grade', textAlign: TextAlign.left, style: TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontFamily: 'Jost',
    fontSize: 11.5,
    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
    fontWeight: FontWeight.normal,
    height: 1
    ),)
    ),Positioned(
    top: 300,
    left: 284,
    child: Text('Cr.Hrs', textAlign: TextAlign.left, style: TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontFamily: 'Jost',
    fontSize: 11.5,
    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
    fontWeight: FontWeight.normal,
    height: 1
    ),)
    ),Positioned(
    top: 305,
    left: 251,
    child: Text('Pts.', textAlign: TextAlign.left, style: TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontFamily: 'Jost',
    fontSize: 11.5,
    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
    fontWeight: FontWeight.normal,
    height: 1
    ),)
    ),Positioned(
    top: 583,
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
    Text('GPA Calculator', textAlign: TextAlign.left, style: TextStyle(
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
    ),
    ]
    )
    );
  }
}
