import 'package:flutter/material.dart';
import 'package:iftikhars_project/TransitionPage.dart';
import 'package:iftikhars_project/attendence.dart';
import 'package:iftikhars_project/markc.dart';
import 'package:iftikhars_project/marks1.dart';
import 'package:iftikhars_project/mtcourses.dart';
import 'package:iftikhars_project/second_page.dart';
import 'package:iftikhars_project/stcourses.dart';
import 'package:iftikhars_project/teachcourses.dart';
import 'package:iftikhars_project/thome.dart';
import 'package:iftikhars_project/transcript1.dart';

class MenutpageWidget extends StatelessWidget {
  final String rn;

  MenutpageWidget({required this.rn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          backgroundColor: Colors.black,
        ),
      ),
      body: Center(
        child: Container(
          // width: 360,
          // height: 640,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => thome(rn: rn)));
                  // Action when Home button is pressed
                },
                child: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Jost',
                    fontSize: 14,
                    letterSpacing: 0.25,
                    fontWeight: FontWeight.normal,
                    height: 1.4285714285714286,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(225, 241, 151, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => teachcourses(rn: rn)));
                  // Action when Course Registration button is pressed
                },
                child: Text(
                  'Courses',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Jost',
                    fontSize: 14,
                    letterSpacing: 0.25,
                    fontWeight: FontWeight.normal,
                    height: 1.4285714285714286,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(48, 49, 44, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => teachcourses(rn: rn)));
                },
                child: Text(
                  'Attendance',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Jost',
                    fontSize: 14,
                    letterSpacing: 0.25,
                    fontWeight: FontWeight.normal,
                    height: 1.4285714285714286,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(48, 49, 44, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => markcourses(rn: rn)));
                  // Action when Marks button is pressed
                },
                child: Text(
                  'Marks',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Jost',
                    fontSize: 14,
                    letterSpacing: 0.25,
                    fontWeight: FontWeight.normal,
                    height: 1.4285714285714286,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(48, 49, 44, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),

              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TransitionPage()));
                  // Action when Grade Change Request button is pressed
                },
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Jost',
                    fontSize: 14,
                    letterSpacing: 0.25,
                    fontWeight: FontWeight.normal,
                    height: 1.4285714285714286,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(48, 49, 44, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
