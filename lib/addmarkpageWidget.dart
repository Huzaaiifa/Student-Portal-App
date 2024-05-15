// import 'dart:js';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'custom_expandable_tile.dart';
import 'temp1.dart';

String userName = "random";
String RollNo = "76L9051";
String DOB = "12/04/1878";

class addmarkpageWidget extends StatefulWidget {

  final String rn;
  final String con;

  addmarkpageWidget({required this.rn, required this.con});

  @override
  _addmarkpageWidget createState() => _addmarkpageWidget();
}

class _addmarkpageWidget extends State<addmarkpageWidget> {
  String ron = '21L5378';

  final userDocRef = FirebaseFirestore.instance.collection('users').doc('21L5378');
  final  attendanceCollectionRef = FirebaseFirestore.instance.collection('users').doc('21L5378').collection('attendence');
  final mathmarksDocRef = FirebaseFirestore.instance.collection('users').doc('21L5378').collection('marks').doc('Math');
  final mqDocRef = FirebaseFirestore.instance.collection('users').doc('21L5378').collection('marks').doc('Math').collection('quizes');
  final msDocRef = FirebaseFirestore.instance.collection('users').doc('21L5378').collection('marks').doc('Math').collection('sessional');
  final maDocRef = FirebaseFirestore.instance.collection('users').doc('21L5378').collection('marks').doc('Math').collection('ass');
  final mfDocRef = FirebaseFirestore.instance.collection('users').doc('21L5378').collection('marks').doc('Math').collection('final');


  TextEditingController _queryController = TextEditingController();

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
              'Marks',
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
            future: collectionRef.doc(rollNm).collection('marks').doc('Math').get(),
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
                        height: 90,
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
                              FutureBuilder<double>(
                                future: calculateExpectedGrade(),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState == ConnectionState.waiting) {
                                    return CircularProgressIndicator(); // Show loading indicator while calculating
                                  }
                                  if (snapshot.hasError) {
                                    return Text('Error: ${snapshot.error}');
                                  }

                                  double expectedGrade = snapshot.data ?? 0.0;

                                  return Text(
                                    'Expected Grade: ${expectedGrade.toStringAsFixed(2)}', // Format grade with 2 decimal places
                                    style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  );
                                },
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Add your logic to show the popup here
                                  // For example:
                                  showDialog(
                                    context: context, // Replace 'context' with your BuildContext variable
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Query"),
                                        content: TextField(
                                          controller: _queryController,
                                          decoration: InputDecoration(
                                            hintText: "Enter your query here",
                                          ),
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Cancel"),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              String query = _queryController.text;
                                              if (query.isNotEmpty) {
                                                _saveQueryToFirestore(query);
                                                _queryController.clear();
                                                Navigator.of(context).pop();
                                              }
                                            },
                                            child: Text("Save"),
                                          ),

                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 37, vertical: 2),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        'Raise Query',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Jost',
                                          fontSize: 11,
                                          letterSpacing: 0.25,
                                          fontWeight: FontWeight.normal,
                                          height: 1.8181818181818181,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Text(
                              //   'Rollnum: $rollNm',
                              //   style: TextStyle(
                              //       fontSize: 12.5,
                              //       fontWeight: FontWeight.w500),
                              // ),


                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 130,
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
                                  title: 'Quizzes',
                                  content: FutureBuilder<QuerySnapshot>(
                                    future: mqDocRef.get(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState == ConnectionState.waiting) {
                                        return CircularProgressIndicator(); // Show loading indicator while fetching data
                                      }
                                      if (snapshot.hasError) {
                                        return Text('Error: ${snapshot.error}');
                                      }
                                      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                                        return Text('No quiz data available');
                                      }

                                      // Once the data is available
                                      List<QueryDocumentSnapshot> quizDocs = snapshot.data!.docs;

                                      // Display quiz information
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          // Column titles
                                          Row(
                                            children: [
                                              Text(
                                                'Quiz',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Text(
                                                'Obtained',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Text(
                                                'Total',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Text(
                                                'Average',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          // Quiz entries
                                          ...quizDocs.asMap().entries.map((entry) {
                                            int index = entry.key + 1; // Quiz index
                                            QueryDocumentSnapshot quizDoc = entry.value;
                                            String quizTitle = 'Quiz $index'; // Label each entry as Quiz 1, Quiz 2, etc.
                                            String quizObtained = quizDoc['obtained']?.toString() ?? 'N/A';
                                            String quizTotal = quizDoc['total']?.toString() ?? 'N/A';
                                            String quizAvg = quizDoc['avg']?.toString() ?? 'N/A';

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
                                                SizedBox(width: 20),
                                                Text(
                                                  '$quizAvg',
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
                              IntrinsicHeight(
                                child: customExpandableTile(
                                  title: 'Sessionals',
                                  content: FutureBuilder<QuerySnapshot>(
                                    future: msDocRef.get(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState == ConnectionState.waiting) {
                                        return CircularProgressIndicator(); // Show loading indicator while fetching data
                                      }
                                      if (snapshot.hasError) {
                                        return Text('Error: ${snapshot.error}');
                                      }
                                      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                                        return Text('No quiz data available');
                                      }

                                      // Once the data is available
                                      List<QueryDocumentSnapshot> quizDocs = snapshot.data!.docs;

                                      // Display quiz information
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          // Column titles
                                          Row(
                                            children: [
                                              Text(
                                                'MID',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Text(
                                                'Obtained',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Text(
                                                'Total',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Text(
                                                'Average',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          // Quiz entries
                                          ...quizDocs.asMap().entries.map((entry) {
                                            int index = entry.key + 1; // Quiz index
                                            QueryDocumentSnapshot quizDoc = entry.value;
                                            String quizTitle = 'Quiz $index'; // Label each entry as Quiz 1, Quiz 2, etc.
                                            String quizObtained = quizDoc['obtained']?.toString() ?? 'N/A';
                                            String quizTotal = quizDoc['total']?.toString() ?? 'N/A';
                                            String quizAvg = quizDoc['avg']?.toString() ?? 'N/A';

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
                                                SizedBox(width: 20),
                                                Text(
                                                  '$quizAvg',
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

                              IntrinsicHeight(
                                child: customExpandableTile(
                                  title: 'Assignments',
                                  content: FutureBuilder<QuerySnapshot>(
                                    future: maDocRef.get(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState == ConnectionState.waiting) {
                                        return CircularProgressIndicator(); // Show loading indicator while fetching data
                                      }
                                      if (snapshot.hasError) {
                                        return Text('Error: ${snapshot.error}');
                                      }
                                      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                                        return Text('No quiz data available');
                                      }

                                      // Once the data is available
                                      List<QueryDocumentSnapshot> quizDocs = snapshot.data!.docs;

                                      // Display quiz information
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          // Column titles
                                          Row(
                                            children: [
                                              Text(
                                                'Assignment',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Text(
                                                'Obtained',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Text(
                                                'Total',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Text(
                                                'Average',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          // Quiz entries
                                          ...quizDocs.asMap().entries.map((entry) {
                                            int index = entry.key + 1; // Quiz index
                                            QueryDocumentSnapshot quizDoc = entry.value;
                                            String quizTitle = 'Quiz $index'; // Label each entry as Quiz 1, Quiz 2, etc.
                                            String quizObtained = quizDoc['obtained']?.toString() ?? 'N/A';
                                            String quizTotal = quizDoc['total']?.toString() ?? 'N/A';
                                            String quizAvg = quizDoc['avg']?.toString() ?? 'N/A';

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
                                                SizedBox(width: 20),
                                                Text(
                                                  '$quizAvg',
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
                              IntrinsicHeight(
                                child: customExpandableTile(
                                  title: 'Final',
                                  content: FutureBuilder<QuerySnapshot>(
                                    future: mfDocRef.get(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState == ConnectionState.waiting) {
                                        return CircularProgressIndicator(); // Show loading indicator while fetching data
                                      }
                                      if (snapshot.hasError) {
                                        return Text('Error: ${snapshot.error}');
                                      }
                                      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                                        return Text('No quiz data available');
                                      }

                                      // Once the data is available
                                      List<QueryDocumentSnapshot> quizDocs = snapshot.data!.docs;

                                      // Display quiz information
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          // Column titles
                                          Row(
                                            children: [

                                              SizedBox(width: 20),
                                              Text(
                                                'Obtained',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Text(
                                                'Total',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Text(
                                                'Average',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          // Quiz entries
                                          ...quizDocs.asMap().entries.map((entry) {
                                            int index = entry.key + 1; // Quiz index
                                            QueryDocumentSnapshot quizDoc = entry.value;
                                            String quizTitle = 'Quiz $index'; // Label each entry as Quiz 1, Quiz 2, etc.
                                            String quizObtained = quizDoc['obtained']?.toString() ?? 'N/A';
                                            String quizTotal = quizDoc['total']?.toString() ?? 'N/A';
                                            String quizAvg = quizDoc['avg']?.toString() ?? 'N/A';

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
                                                SizedBox(width: 20),
                                                Text(
                                                  '$quizAvg',
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

  Future<void> _saveQueryToFirestore(String query) async {
    // Get a Firestore instance
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Reference to the Firestore document named "q1" in the "queries" collection


    // Update the document to add the query to the array field
    firestore.runTransaction((transaction) async {
      // Get the current snapshot of the document
      DocumentSnapshot snapshot = await transaction.get(mathmarksDocRef);

      // Get the current array field value (or create an empty array if it doesn't exist)
      List<dynamic> currentQueries = snapshot.exists
          ? (snapshot.data() != null ? (snapshot.data()! as Map<String, dynamic>)['qr'] ?? [] : [])
          : ['no lecture duration'];

      String rollNumber = '21L5378';
      // Add the new query to the array
      currentQueries.add(query);
      String cn = 'Math';
      // Update the document with the new array value
      transaction.update(mathmarksDocRef, {'qr': currentQueries});

      await mathmarksDocRef.update({'qs': FieldValue.arrayUnion(['new'])});

      DocumentSnapshot courseDoc = await mathmarksDocRef.get();
      Map<String, dynamic>? courseDocData = courseDoc.data() as Map<String, dynamic>?;
      String teacherId = courseDocData?['teacher'] ?? '';

      DocumentSnapshot teacherDoc = await firestore.collection('users').doc(teacherId).get();
      if (teacherDoc.exists) {
        Map<String, dynamic>? tDocData = teacherDoc.data() as Map<String, dynamic>?;
        String teacherName = tDocData?['name'] ?? '';
        // Assuming teacher's name is stored in 'name' field

        // Send notification to teacher
        String notificationMessage = 'New query from student $rollNumber in course $cn';

        await firestore.collection('users').doc(teacherId).collection('notifications').add({
          'message': 'New query from student $rollNumber in course $cn',
          'timestamp': FieldValue.serverTimestamp(), 'fromp': '$rollNumber', 'on': '$cn','description': '$query'
        });


      }


    }).then((value) {
      // Successfully updated document
      print('Query saved successfully: $query');
    }).catchError((error) {
      // Failed to update document
      print('Failed to save query: $error');
    });



  }


  Future<double> calculateExpectedGrade() async {
    // Fetch data from Firestore
    QuerySnapshot quizSnapshot = await mqDocRef.get();
    QuerySnapshot sessionalSnapshot = await msDocRef.get();
    QuerySnapshot finalSnapshot = await mfDocRef.get();
    QuerySnapshot aSnapshot = await maDocRef.get();

    // Process quiz data
    double totalQuizScore = 0;
    double totalQuizWeight = 0;
    for (QueryDocumentSnapshot quizDoc in quizSnapshot.docs) {
      double quizScore = double.tryParse(quizDoc['obtained'] ?? '0') ?? 0; // Convert score to double
      double quizWeight = double.tryParse(quizDoc['weight'] ?? '0') ?? 0; // Convert weight to double
      totalQuizScore += quizScore * (quizWeight / 100); // Convert weight to fraction (0-1)
      totalQuizWeight += quizWeight / 100; // Convert weight to fraction (0-1)
    }

// Process assignment data
    double totalAssignmentScore = 0;
    double totalAssignmentWeight = 0;
    for (QueryDocumentSnapshot assignmentDoc in aSnapshot.docs) {
      double assignmentScore = double.tryParse(assignmentDoc['obtained'] ?? '0') ?? 0; // Convert score to double
      double assignmentWeight = double.tryParse(assignmentDoc['weight'] ?? '0') ?? 0; // Convert weight to double
      totalAssignmentScore += assignmentScore * (assignmentWeight / 100); // Convert weight to fraction (0-1)
      totalAssignmentWeight += assignmentWeight / 100; // Convert weight to fraction (0-1)
    }

// Process final data
    double finalScore = 0;
    double finalTotalWeight = 0; // To accumulate total weight of finals
    for (QueryDocumentSnapshot finalDoc in finalSnapshot.docs) {
      double finalMark = double.tryParse(finalDoc['obtained'] ?? '0') ?? 0; // Convert mark to double
      double finalWeight = double.tryParse(finalDoc['weight'] ?? '0') ?? 0; // Convert weight to double
      finalScore += finalMark * (finalWeight / 100); // Convert weight to fraction (0-1)
      finalTotalWeight += finalWeight / 100; // Convert weight to fraction (0-1)
    }

// Process sessional data
    double sessionalScore = 0;
    double sessionalTotalWeight = 0; // To accumulate total weight of sessionals
    for (QueryDocumentSnapshot sessionalDoc in sessionalSnapshot.docs) {
      double sessionalMark = double.tryParse(sessionalDoc['obtained'] ?? '0') ?? 0; // Convert mark to double
      double sessionalWeight = double.tryParse(sessionalDoc['weight'] ?? '0') ?? 0; // Convert weight to double
      sessionalScore += sessionalMark * (sessionalWeight / 100); // Convert weight to fraction (0-1)
      sessionalTotalWeight += sessionalWeight / 100; // Convert weight to fraction (0-1)
    }


    // Calculate total grade
    double totalScore = totalQuizScore + totalAssignmentScore + finalScore + sessionalScore;
    double totalWeight = totalQuizWeight + totalAssignmentWeight + finalTotalWeight +  sessionalTotalWeight;

    double percentage = (totalScore / totalWeight) ;

    // Deduct 5% for each grade level starting from 95%
    double deduction = (95 - percentage) / 5 * 0.2;

    // Ensure the grade is not below 2.2
    double grade = 4.0 - deduction;
    if (grade < 2.2) {
      grade = 2.2;
    }

    return grade;
  }




}
