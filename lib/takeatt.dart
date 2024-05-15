import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class AttendancePage extends StatelessWidget {
  final String date  = DateFormat('yyyy-MM-dd').format(DateTime.now());
  final int lectureNumber;

  var rollNumber;

  AttendancePage({required this.rollNumber, required this.lectureNumber});

  @override
  Widget build(BuildContext context) {
    final attendanceCollectionRef = FirebaseFirestore.instance.collection('attendance');
    // Get the current date
    String currentDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance - $date, Lecture $lectureNumber'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Date: $date | Lecture Number: $lectureNumber',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            FutureBuilder<DocumentSnapshot>(
              future: FirebaseFirestore.instance.collection('courses').doc('Math').get(),
              builder: (context, userSnapshot) {
                if (userSnapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (userSnapshot.hasError) {
                  return Center(child: Text('Error: ${userSnapshot.error}'));
                }
                if (!userSnapshot.hasData || !(userSnapshot.data!.exists)) {
                  return Center(child: Text('No user data found.'));
                }
                // Extract course data from the 'course1' field
                List<dynamic> stds = userSnapshot.data!.get('students');
                List<dynamic> pdts = userSnapshot.data!.get('attendence');

                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: stds.length,
                  itemBuilder: (context, index) {
                    String studentName = stds[index];
                    String attendance = pdts[index]; // Default to 'P'

                    return ListTile(
                      title: Text(studentName),
                      trailing: DropdownButton<String>(
                        value: attendance,
                        onChanged: (newValue) {
                          // Update attendance here
                          updateAttendance(stds[index], newValue!);
                        },
                        items: ['L', 'A', 'P'].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void updateAttendance(String studentId, String newAttendance) {
    // Get the current date
    String currentDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

    // Reference to the student's document
    final studentDocRef = FirebaseFirestore.instance.collection('users').doc(studentId);

    // Reference to the student's course attendance document for the current date
    final courseAttendanceDocRef = studentDocRef.collection('attendance').doc('Math');

    courseAttendanceDocRef.get().then((docSnapshot) {
      if (docSnapshot.exists) {
        // Document exists, get the present array and append new attendance
        List<dynamic> present = docSnapshot.data()?['present'] ?? [];
        present.add(newAttendance);

        // Update the present array in the course document
        courseAttendanceDocRef.update({'present': present}).then((_) {
          print('Attendance updated successfully for student $studentId in course Math');
        }).catchError((error) {
          print('Failed to update attendance: $error');
        });
      } else {
        // Document doesn't exist, create a new document with the present array
        courseAttendanceDocRef.set({'present': [newAttendance]}).then((_) {
          print('Attendance updated successfully for student $studentId in course Math');
        }).catchError((error) {
          print('Failed to update attendance: $error');
        });
      }
    }).catchError((error) {
      print('Error fetching document: $error');
    });
  }
}
