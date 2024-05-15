// import 'dart:js';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'MenutpageWidget.dart';
import 'custom_expandable_tile.dart';
import 'temp1.dart';

String userName = "random";
String RollNo = "76L9051";
String DOB = "12/04/1878";

class thome extends StatefulWidget {
  final String rn;

  thome({required this.rn});

  @override
  _thome createState() => _thome();
}

class _thome extends State<thome> {
  final CollectionReference collectionRef =
  FirebaseFirestore.instance.collection('users');

  late List<bool> _isOpen = List.filled(4, false);

  @override
  Widget build(BuildContext build) {
    String rollNm = widget.rn.substring(0, 2);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              'Flex Teacher Portal',
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
              Navigator.push(
                  build,
                  MaterialPageRoute(
                      builder: (context) => MenutpageWidget(rn: rollNm)));
              ;
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
                Map<String, dynamic>? userData =
                userSnapshot.data!.data() as Map<String, dynamic>?;
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                'Designation: ${userData?['designation'] ?? 'No CNIC'}',
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
                      top: 225,
                      left: 37,
                      bottom: 0 - 16.0,
                      child: Container(
                        width: 325,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: SingleChildScrollView(
                          // Wrap the Column with SingleChildScrollView
                          child: Column(
                            children: [
                              SizedBox(height: 33),
                              IntrinsicHeight(
                                child: customExpandableTile(
                                  title: 'Pending Tasks/Queries',
                                  content: FutureBuilder<QuerySnapshot>(
                                    future: collectionRef.doc(rollNm).collection('notifications').get(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState == ConnectionState.waiting) {
                                        return CircularProgressIndicator(); // Show loading indicator while fetching data
                                      }
                                      if (snapshot.hasError) {
                                        return Text('Error: ${snapshot.error}');
                                      }
                                      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                                        return Text('No notifications data available');
                                      }

                                      // Once the data is available
                                      List<QueryDocumentSnapshot> quizDocs = snapshot.data!.docs;

                                      // Display quiz information
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          // Column titles

                                          SizedBox(height: 10),
                                          // Quiz entries
                                          ...quizDocs.asMap().entries.map((entry) {
                                            int index = entry.key + 1; // Quiz index
                                            QueryDocumentSnapshot quizDoc = entry.value;
                                            String quizTitle = 'Notification $index'; // Label each entry as Quiz 1, Quiz 2, etc.
                                            String quizObtained = quizDoc['message']?.toString() ?? 'N/A';
                                            String quizTotal = quizDoc['description']?.toString() ?? 'N/A';


                                            return Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '$quizTitle:',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                                SizedBox(width: 20),
                                                Text(
                                                  '$quizObtained',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                                SizedBox(width: 20),
                                                Text(
                                                  '$quizTotal',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),


                                              ],
                                            );
                                          }).toList(),
                                        ],
                                      );
                                    },
                                  ),
                                  color: Color(0xFF30312C),
                                  shadowColor: Colors.black.withOpacity(0.25),
                                  shadowOffset: Offset(0, 4),
                                ),

                              ),
                              SizedBox(height: 20),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
