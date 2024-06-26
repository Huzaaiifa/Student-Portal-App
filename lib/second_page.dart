// import 'dart:js';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'custom_expandable_tile.dart';
import 'temp1.dart';

String userName = "random";
String RollNo = "76L9051";
String DOB = "12/04/1878";

class SecondPage extends StatefulWidget {
  final String rn;

  SecondPage({required this.rn});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final CollectionReference collectionRef =
     FirebaseFirestore.instance.collection('users');
 // FirebaseFirestore.instance.collection('c1');
  late List<bool> _isOpen = List.filled(4, false);

  @override
  Widget build(BuildContext build) {
    String rollNm = widget.rn.substring(0, 7);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
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
              Navigator.push(
                  build,
                  MaterialPageRoute(
                      builder: (context) => MenupageWidget(rn: rollNm)));
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
                                'Rollnum: $rollNm',
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
                                  title: 'Personal Information',
                                  content: Text(
                                    '${userData?['personal information'] ?? 'No Personal Information'}',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(1.0),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  color: Color(0xFF30312C),
                                  shadowColor: Colors.black.withOpacity(0.25),
                                  shadowOffset: Offset(0, 4),
                                ),
                              ),
                              SizedBox(height: 20),
                              // Add spacing between tiles

                              IntrinsicHeight(
                                child: customExpandableTile(
                                  title: 'Contact Information',
                                  content: Text(
                                    '${userData?['contact'] ?? 'No contact Information'}',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(1.0),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  color: Color(0xFF30312C),
                                  shadowColor: Colors.black.withOpacity(0.25),
                                  shadowOffset: Offset(0, 4),
                                ),
                              ),
                              SizedBox(height: 20),
                              IntrinsicHeight(
                                child: customExpandableTile(
                                  title: 'Family Information',
                                  content: Text(
                                    '${userData?['fam'] ?? 'No family Information'}',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(1.0),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  color: Color(0xFF30312C),
                                  shadowColor: Colors.black.withOpacity(0.25),
                                  shadowOffset: Offset(0, 4),
                                ),
                              ),
                              SizedBox(height: 20),
                              IntrinsicHeight(
                                child: customExpandableTile(
                                  title: 'Academic Calender',
                                  content: Text(
                                    '${userData?['acal'] ?? 'No Information'}',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(1.0),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  color: Color(0xFF30312C),
                                  shadowColor: Colors.black.withOpacity(0.25),
                                  shadowOffset: Offset(0, 4),
                                ),
                              ),
                              SizedBox(height: 20)

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
