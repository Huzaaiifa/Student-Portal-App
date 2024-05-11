import 'dart:js';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

String userName = "random";
String RollNo = "76L9051";
String DOB = "12/04/1878";


class SecondPage extends StatelessWidget {
  final String rn;

  SecondPage({required this.rn});

  final CollectionReference collectionRef =
  FirebaseFirestore.instance.collection('users');

  Future getData() async {
    try {
      Map<String, dynamic> emptyMap = {};
      DocumentSnapshot<Map<String, dynamic>> temp = await collectionRef
          .doc('21L-5456')
          .get() as DocumentSnapshot<Map<String, dynamic>>;

      if (temp.exists) {
        emptyMap.addAll(temp.data()!);
      }

      print(emptyMap['name']);
    } catch (e) {
      debugPrint("ERROR -$e");
      return e;
    }
  }

  @override
  Widget build(BuildContext build) {
    String rollNm = rn.substring(0, 7);
    return Scaffold(
        appBar: PreferredSize(
          preferredSize:
          Size.fromHeight(65), // Adjust the height of the app bar
          child: AppBar(
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                'Flex Student Portal',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
            ),
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: Icon(
                Icons.reorder,
                color: Colors.white,
              ),
              onPressed: () {
                print('Reorder icon pressed!');
              },
            ),
          ),
        ),
        body: Builder(
          builder: (context) => Container(
            color: Color(0xFFE7EBD0),
            child: FutureBuilder<DocumentSnapshot>(
              future: collectionRef.doc(rollNm).get(),
              builder: (context, userSnapshot) {
                if (userSnapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: Text('No Data...'),
                  );
                } else {
                  Map<String, dynamic>? userData = userSnapshot.data!.data() as Map<String, dynamic>?;
                  return Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.black,
                          height: MediaQuery.of(context).size.height * 0.15,
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: 37,
                        child: Container(
                          width: 325,
                          height: 136,
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
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Center align the text
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Text(
                                  'Name: ${userData?['name'] ?? 'No Name'}',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Relationship Status: ${userData?['relationshipstatus'] ?? 'No Blood Group'}',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4),

                                Text(
                                  'CNIC: ${userData?['CNIC'] ?? 'No CNIC'}',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Email: ${userData?['email'] ?? 'No Email'}',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4),

                                Text(
                                  'DOB: ${userData?['DOB'] != null ? DateFormat('yyyy-MM-dd').format(userData!['DOB'].toDate()) : 'No DOB'}',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 225, // Adjust the position as needed
                        left: 37,
                        bottom: 0, // Extend to the bottom of the screen
                        child: Container(
                          width: 325,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 45),
                              Container(
                                width: 267,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: Color(0xFF30312C),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 27),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Personal Information',
                                        style: TextStyle(
                                            fontSize: 14.5,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Icon(Icons.arrow_circle_right_outlined,
                                          color: Colors.white),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 22),
                              Container(
                                width: 267,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: Color(0xFF30312C),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 27),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Contact Information',
                                        style: TextStyle(
                                            fontSize: 14.5,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Icon(Icons.arrow_circle_right_outlined,
                                          color: Colors.white),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 22),
                              Container(
                                width: 267,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: Color(0xFF30312C),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 27),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Family Information',
                                        style: TextStyle(
                                            fontSize: 14.5,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Icon(Icons.arrow_circle_right_outlined,
                                          color: Colors.white),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 22),
                              Container(
                                width: 267,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: Color(0xFF30312C),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 27),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Academic Calender',
                                        style: TextStyle(
                                            fontSize: 14.5,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Icon(Icons.arrow_circle_right_outlined,
                                          color: Colors.white),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ));
  }
}