import 'dart:js';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class customExpandableTile extends StatefulWidget {
  final String title;
  final Widget content;
  final Color color;
  final Color shadowColor;
  final Offset shadowOffset;

  const customExpandableTile({
    Key? key,
    required this.title,
    required this.content,
    required this.color,
    required this.shadowColor,
    required this.shadowOffset,
  }) : super(key: key);

  @override
  customExpandableTileState createState() => customExpandableTileState();
}

class customExpandableTileState extends State<customExpandableTile> {
  bool _isExpanded = false;

  void toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: toggleExpansion,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200), // Adjust animation duration
        curve: Curves.easeInOut, // Adjust animation curve
        width: _isExpanded ? 270 : 250, // Width changes based on expansion
        height: _isExpanded ? 210 : 55, // Height changes based on expansion
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: widget.shadowColor,
              offset: widget.shadowOffset,
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white.withOpacity(1.0),
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (_isExpanded)
                widget.content, // Content displayed only when expanded
            ],
          ),
        ),
      ),
    );
  }
}
