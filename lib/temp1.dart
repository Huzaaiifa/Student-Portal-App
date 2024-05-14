import 'package:flutter/material.dart';
import 'package:iftikhars_project/attendence.dart';
import 'package:iftikhars_project/marks1.dart';
import 'package:iftikhars_project/second_page.dart';
import 'package:iftikhars_project/transcript1.dart';

class MenupageWidget extends StatelessWidget {
  final String rn;

  MenupageWidget({required this.rn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Page'),
      ),
      body: Center(
        child: Container(
          width: 360,
          height: 640,
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
                          builder: (context) => SecondPage(rn: rn)));
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
                          builder: (context) => SecondPage(rn: rn)));
                  // Action when Course Registration button is pressed
                },
                child: Text(
                  'Course Registration',
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
                      builder: (context) => attpageWidget(rollNumber: rn)));
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
                          builder: (context) => MarkspageWidget(rn: rn)));
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
                          builder: (context) => trspageWidget(rn: rn)));
                  // Action when Transcript button is pressed
                },
                child: Text(
                  'Transcript',
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
                          builder: (context) => SecondPage(rn: rn)));
                  // Action when Fee Challan button is pressed
                },
                child: Text(
                  'Fee Challan',
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
                          builder: (context) => SecondPage(rn: rn)));
                  // Action when Course Feedback button is pressed
                },
                child: Text(
                  'Course Feedback',
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
                          builder: (context) => SecondPage(rn: rn)));
                  // Action when Course Withdraw button is pressed
                },
                child: Text(
                  'Course Withdraw',
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
                          builder: (context) => SecondPage(rn: rn)));
                  // Action when Grade Change Request button is pressed
                },
                child: Text(
                  'Grade Change Request',
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
                onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondPage(rn: rn)));
                  // Action when Academic Calendar button is pressed
                },
                child: Text(
                  'Academic Calendar',
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
