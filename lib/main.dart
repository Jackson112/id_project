import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: IdCard(),
  ));


class IdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
         appBar: AppBar(
           title: Text('My Id Card'),
           centerTitle: true,
           backgroundColor: Colors.grey[850],
           elevation: 0.0,
         ),
    );
  }
}


