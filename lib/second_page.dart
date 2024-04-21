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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.only(left: 35),
            child: Text(
              'Flex Student Portal',
              style: TextStyle(
                color: Colors.white, // Set text color to white
                fontWeight: FontWeight.bold, // Optional: Adjust font weight
              ),
            ),
          ),
          backgroundColor:
              Colors.black, // Set the background color of the app bar to black
          leading: IconButton(
            icon: Icon(
              Icons.reorder, // Use Icons.reorder for the reorder icon
              color: Colors.white, // Set the color of the reorder icon to white
            ),
            onPressed: () {
              // Define the action when the reorder icon is pressed
              print('Reorder icon pressed!');
            },
          ),
        ),
        body: Builder(
          builder: (context) => Container(
            color: Color(0xFFE7EBD0), // Set background color to E7EBD0
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
                          height: MediaQuery.of(context).size.height *
                              0.15, // Set the height to cover 25% of the screen
                        ),
                      ),
                      Positioned(
                        top: 65, // Position the box 104 pixels from the top
                        left: 45, // Position the box 20 pixels from the left
                        child: Container(
                          width: 318,
                          height: 160,
                          decoration: BoxDecoration(
                            color: Color(0xFFE1F197), // Set color to E1F197
                            borderRadius: BorderRadius.circular(
                                25), // Rounded corners with a radius of 25 pixels
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name: ${items.isNotEmpty ? items[0]['name'] : 'No Name'}',
                                  style: TextStyle(fontSize: 11),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Blood Group: ${items.isNotEmpty ? items[0]['blood_group'] : 'No Blood Group'}',
                                  style: TextStyle(fontSize: 11),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'CNIC: ${items.isNotEmpty ? items[0]['CNIC'] : 'No CNIC'}',
                                  style: TextStyle(fontSize: 11),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Email: ${items.isNotEmpty ? items[0]['email'] : 'No Email'}',
                                  style: TextStyle(fontSize: 11),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'DOB: ${items.isNotEmpty ? (items[0]['DOB'] != null ? items[0]['DOB'].toDate().toString() : 'No DOB') : 'No DOB'}',
                                  style: TextStyle(fontSize: 11),
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
