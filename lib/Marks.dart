import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Marks extends StatelessWidget {
  final String rollNumber;
  final DocumentReference userDocRef;
  final CollectionReference marksCollectionRef;
  final DocumentReference mathMarksDocRef;
  final DocumentReference physicsMarksDocRef;
  final DocumentReference compMarksDocRef;

  Marks({required this.rollNumber})
      : userDocRef = FirebaseFirestore.instance.collection('users').doc(rollNumber),
        marksCollectionRef = FirebaseFirestore.instance.collection('users').doc(rollNumber).collection('marks'),
        mathMarksDocRef = FirebaseFirestore.instance.collection('users').doc(rollNumber).collection('marks').doc('Math'),
        compMarksDocRef = FirebaseFirestore.instance.collection('users').doc(rollNumber).collection('marks').doc('Computer'),
        physicsMarksDocRef = FirebaseFirestore.instance.collection('users').doc(rollNumber).collection('marks').doc('Physics');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marks Page for Roll Number: $rollNumber'),
      ),
      body: Builder(
        builder: (context) => Container(
          color: Color(0xFFE7EBD0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // FutureBuilder for Math marks
              FutureBuilder<DocumentSnapshot>(
                future: mathMarksDocRef.get(),
                builder: (context, mathSnapshot) {
                  if (mathSnapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: Text('No Math Data...'),
                    );
                  } else {
                    Map<String, dynamic>? mathData = mathSnapshot.data!.data() as Map<String, dynamic>?;
                    return buildMarksWidget('Math', mathData);
                  }
                },
              ),
              // FutureBuilder for Physics marks
              FutureBuilder<DocumentSnapshot>(
                future: physicsMarksDocRef.get(),
                builder: (context, physicsSnapshot) {
                  if (physicsSnapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: Text('No Physics Data...'),
                    );
                  } else {
                    Map<String, dynamic>? physicsData = physicsSnapshot.data!.data() as Map<String, dynamic>?;
                    return buildMarksWidget('Physics', physicsData);
                  }
                },
              ),

              FutureBuilder<DocumentSnapshot>(
              future: compMarksDocRef.get(),
              builder: (context, compSnapshot) {
              if (compSnapshot.connectionState == ConnectionState.waiting) {
              return Center(
              child: Text('No computer Data...'),
              );
              } else {
              Map<String, dynamic>? compData = compSnapshot.data!.data() as Map<String, dynamic>?;
              return buildMarksWidget('Computer', compData);
              }
              },
              ),




            ],
          ),
        ),
      ),
    );
  }

  Widget buildMarksWidget(String courseName, Map<String, dynamic>? data) {
    return Positioned(
      top: 30,
      left: 37,
      child: Container(
        width: 325,
        decoration: BoxDecoration(
          color: Color(0xFFE1F197),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Course: $courseName',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              buildFieldWidgets('Assignments', data?['assignment']),
              buildFieldWidgets('Quizzes', data?['quiz']),
              buildFieldWidgets('Midterms', data?['mid']),
              buildFieldWidgets('Finals', data?['finalS']),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFieldWidgets(String fieldName, List<dynamic>? fieldData) {
    List<Widget> fieldWidgets = [];

    if (fieldData != null && fieldData.isNotEmpty) {
      for (int i = 0; i < fieldData.length; i++) {
        fieldWidgets.add(
          Text(
            '$fieldName ${i + 1}: ${fieldData[i]}',
            style: TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }
    } else {
      fieldWidgets.add(
        Text(
          'No $fieldName available',
          style: TextStyle(
            fontSize: 12.5,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$fieldName:',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        ...fieldWidgets,
        SizedBox(height: 8),
      ],
    );
  }

}
