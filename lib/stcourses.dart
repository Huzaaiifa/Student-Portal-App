import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iftikhars_project/attendence.dart';
import 'package:iftikhars_project/marks1.dart';
import 'package:iftikhars_project/second_page.dart';
import 'package:iftikhars_project/transcript1.dart';

class stcourses extends StatelessWidget {
  final String rn;

  stcourses({required this.rn});

  @override
  Widget build(BuildContext context) {
    final userDocRef = FirebaseFirestore.instance.collection('users').doc(rn);
    final attendanceCollectionRef = FirebaseFirestore.instance.collection(
        'users').doc(rn).collection('marks');
    final mathattendanceDocRef = FirebaseFirestore.instance.collection('users')
        .doc(rn).collection('attendence')
        .doc('Math');


    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              'Enrolled Courses',
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
      body: Container( // Wrap with Container
          color: Colors.black,
          child: FutureBuilder<QuerySnapshot>(
        future: attendanceCollectionRef
            .get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(
              child: Text('No courses found.'),
            );
          }
          // Extract course data
          List<QueryDocumentSnapshot> courseDocs = snapshot.data!.docs;

          return ListView.builder(
            itemCount: courseDocs.length,
            itemBuilder: (context, index) {
              String courseName = courseDocs[index].id;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => attpageWidget(rollNumber: rn, con: courseName)));
                    // Action when button is pressed
                    // For example, navigate to a page related to the course
                  },
                  child: Text(
                    courseName,
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
              );
            },
          );
        },

      ),
      )
    );
  }
}