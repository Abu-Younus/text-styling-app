import 'package:flutter/material.dart';

void main() {
  runApp(TextStylingApp());
}

class TextStylingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Text Styling App')),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title Text
          Text(
            'Flutter Text Styling',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.0), // Space between title and subtitle
          // Subtitle Text
          Text(
            'Experiment with text styles',
            style: TextStyle(
              fontSize: 16.0,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.0), // Space between subtitle and button
          // Interactive TextButton
          TextButton(
            onPressed: () {
              // Show Snackbar when button is pressed
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('You clicked the button!'),
                ),
              );
            },
            child: Text('Click Me'),
          ),
          SizedBox(height: 4.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(width: 4.0),
              Text(
                'Flutter!',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
