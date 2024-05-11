import 'package:intl/intl.dart'; // Remove 'dart:js' if not needed
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

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
  final Color _startColor = Colors.white; // Initial color (collapsed)
  final Color _endColor = Color(0xFFDAE5A2);
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
        width: _isExpanded ? 270 : 258, // Width changes based on expansion
        height: _isExpanded ? 210 : 52, // Height changes based on expansion
        decoration: BoxDecoration(
          color: _isExpanded ? Color(0xFFDAE5A2) : Color(0xFF30312C),
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
          child: Row(
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 14.0,
                  color: _isExpanded ? Colors.black : Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Row(
                // Use Row for icon and content (optional)
                children: [
                  Icon(
                    _isExpanded
                        ? Icons.arrow_circle_down
                        : Icons.arrow_circle_right_outlined,
                    color: _isExpanded
                        ? Colors.black
                        : Colors.white, // Ternary operator for icon
                  ),
                  if (_isExpanded) // Conditional widget for content
                    Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),),
                  if (!_isExpanded) // Conditional rendering of the content
                    widget.content,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
