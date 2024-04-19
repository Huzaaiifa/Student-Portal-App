import 'package:flutter/material.dart';
String _selectedOption = '';
class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Admin Page",
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Page());
  }
}

class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: PopupMenuButton<String>(
          onSelected: (String value) {
            // Handle menu item selection
            setState(() {
              // Update selected option
              _selectedOption = value;
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'home',
              child: Text('Home'),
            ),
            const PopupMenuItem<String>(
              value: 'attendance',
              child: Text('Attendance'),
            ),
            const PopupMenuItem<String>(
              value: 'marks',
              child: Text('Marks'),
            ),
          ],
        ),
        title: Text('Admin Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Implement more functionality
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Selected Option: $_selectedOption'),
      ),
    );
  }
}