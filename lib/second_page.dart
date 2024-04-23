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
              Size.fromHeight(100), // Adjust the height of the app bar
          child: AppBar(
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                'Flex Student Portal',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
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
                          height: MediaQuery.of(context).size.height * 0.13,
                        ),
                      ),
                      Positioned(
                        top: 15,
                        left: 37,
                        child: Container(
                          width: 318,
                          height: 160,
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
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // Center align the text
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Text(
                                  'Name: ${items.isNotEmpty ? items[0]['name'] : 'No Name'}',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Blood Group: ${items.isNotEmpty ? items[0]['blood_group'] : 'No Blood Group'}',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'CNIC: ${items.isNotEmpty ? items[0]['CNIC'] : 'No CNIC'}',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Email: ${items.isNotEmpty ? items[0]['email'] : 'No Email'}',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'DOB: ${items.isNotEmpty ? (items[0]['DOB'] != null ? items[0]['DOB'].toDate().toString() : 'No DOB') : 'No DOB'}',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
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
        ));
  }
}
