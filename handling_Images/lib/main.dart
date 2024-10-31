import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Working with Images'),
        ),
        body: Center(
          child: Column(
            children: [
               Text(
                'This image is rendering through Internet',
                style: TextStyle(fontSize: 50.0),
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuPzAOB6d0BxKBBN7Kr5fCEwML4vGslJXX2w&s',  // image UrL
                width: 400,
                height: 200,
              ),
              Text(
                'This image is rendering through assets folder',
                style: TextStyle(fontSize: 50.0),
              ),
              const Image(
                image: AssetImage('assets/acura_logo.png'),  // Ensure this file exists in your assets folder
              ),
              Text(
                'Welcome to NUV',
                style: TextStyle(fontSize: 50.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
