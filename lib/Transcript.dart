import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Transcript extends StatefulWidget {
  final String rollNumber;
  final DocumentReference userDocRef;
  final CollectionReference transcriptCollectionRef;
  final DocumentReference mathTranscriptDocRef;
  final DocumentReference physicsTranscriptDocRef;
  final DocumentReference compTranscriptDocRef;

  Transcript({required this.rollNumber})
      : userDocRef = FirebaseFirestore.instance.collection('users').doc(rollNumber),
        transcriptCollectionRef = FirebaseFirestore.instance.collection('users').doc(rollNumber).collection('transcript'),
        mathTranscriptDocRef = FirebaseFirestore.instance.collection('users').doc(rollNumber).collection('transcript').doc('Math'),
        physicsTranscriptDocRef = FirebaseFirestore.instance.collection('users').doc(rollNumber).collection('transcript').doc('Physics'),
        compTranscriptDocRef = FirebaseFirestore.instance.collection('users').doc(rollNumber).collection('transcript').doc('Computer');

  @override
  _TranscriptState createState() => _TranscriptState();
}

class _TranscriptState extends State<Transcript> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transcript Page for Roll Number: ${widget.rollNumber}'),
      ),
      body: Builder(
        builder: (context) => Container(
          color: Color(0xFFE7EBD0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // FutureBuilder for Math transcript
              FutureBuilder<DocumentSnapshot>(
                future: widget.mathTranscriptDocRef.get(),
                builder: (context, mathSnapshot) {
                  if (mathSnapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: Text('No Math Transcript Data...'),
                    );
                  } else {
                    Map<String, dynamic>? mathData = mathSnapshot.data!.data() as Map<String, dynamic>?;
                    return buildTranscriptWidget('Math', mathData);
                  }
                },
              ),
              // FutureBuilder for Physics transcript
              FutureBuilder<DocumentSnapshot>(
                future: widget.physicsTranscriptDocRef.get(),
                builder: (context, physicsSnapshot) {
                  if (physicsSnapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: Text('No Physics Transcript Data...'),
                    );
                  } else {
                    Map<String, dynamic>? physicsData = physicsSnapshot.data!.data() as Map<String, dynamic>?;
                    return buildTranscriptWidget('Physics', physicsData);
                  }
                },
              ),
              // FutureBuilder for Computer transcript
              FutureBuilder<DocumentSnapshot>(
                future: widget.compTranscriptDocRef.get(),
                builder: (context, compSnapshot) {
                  if (compSnapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: Text('No Computer Transcript Data...'),
                    );
                  } else {
                    Map<String, dynamic>? compData = compSnapshot.data!.data() as Map<String, dynamic>?;
                    return buildTranscriptWidget('Computer', compData);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTranscriptWidget(String courseName, Map<String, dynamic>? data) {
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
                'Course: ${data?['courseName'] ?? 'No Course Name'}',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              buildFieldWidgets('Course Code', data?['code']),
              buildFieldWidgets('Course Name', data?['courseName']),
              buildFieldWidgets('Credit Hours', data?['credits']),
              buildFieldWidgets('Points', data?['points']),
              buildFieldWidgets('Type', data?['type']),


            ],
          ),
        ),
      ),
    );
  }

  Widget buildFieldWidgets(String fieldName, dynamic fieldData) {
    if (fieldData is List<dynamic>) {
      List<Widget> fieldWidgets = [];

      if (fieldData.isNotEmpty) {
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
    } else if (fieldData is String) {
      return Text(
        '$fieldName: $fieldData',
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      );
    } else {
      return Text('Invalid data type for $fieldName');
    }
  }

}


