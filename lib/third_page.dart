import 'package:flutter/material.dart';
//import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';




class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("MY PAGE"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: StreamBuilder<QuerySnapshot>(stream: FirebaseFirestore.instance.collection('users').snapshots(),
            builder: (context, userSnapshot){
              if(userSnapshot.connectionState==ConnectionState.waiting){
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              else{
                final userDocs = userSnapshot.data!.docs;
                return ListView.builder(
                    itemCount: userDocs.length,
                    itemBuilder: (context, index){
                      return ListTile(

                        title: Text(userDocs[index]['name']),
                        subtitle: Text(userDocs[index]['roll_no']),
                      );
                    });
              }
            }
        ),),
    );
  }
}


