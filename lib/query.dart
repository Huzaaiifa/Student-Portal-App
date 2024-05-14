import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showPopup(context);
      },
      child: Text('Show Popup'),
    );
  }

  // Function to show popup
  Future<void> _showPopup(BuildContext context) async {
    TextEditingController _textController = TextEditingController();

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Text'),
          content: TextField(
            controller: _textController,
            decoration: InputDecoration(hintText: 'Enter your text here'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(_textController.text); // Close dialog and return text
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
