// import 'dart:js';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

String userName = "random";
String RollNo = "76L9051";
String DOB = "12/04/1878";

class SecondPage extends StatelessWidget {
  SecondPage({super.key});

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
            child: StreamBuilder<QuerySnapshot>(
              stream: collectionRef.snapshots(),
              builder: (context, userSnapshot) {
                if (!userSnapshot.hasData) {
                  return Center(
                    child: Text('No Data...'),
                  );
                } else {
                  List<QueryDocumentSnapshot> items = userSnapshot.data!.docs;
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
                                  'Name: ${items.isNotEmpty ? items[0]['name'] : 'No Name'}',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Blood Group: ${items.isNotEmpty ? items[0]['blood_group'] : 'No Blood Group'}',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'CNIC: ${items.isNotEmpty ? items[0]['CNIC'] : 'No CNIC'}',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Email: ${items.isNotEmpty ? items[0]['email'] : 'No Email'}',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'DOB: ${items.isNotEmpty ? (items[0]['DOB'] != null ? items[0]['DOB'].toDate().toString() : 'No DOB') : 'No DOB'}',
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
