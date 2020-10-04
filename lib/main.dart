import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: IdCard(),
  ));


class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int flutterLevel = 0;
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
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          setState((){
            flutterLevel +=1;
          });
        },
        child: Icon(
          Icons.add,

      ),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(

            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 50.0,
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[700],
              ),
              SizedBox(height: 20.0),
              Text('Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
              ),
            SizedBox(height: 10.0),
              Text('Jackson',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text('Current Flutter level',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text('$flutterLevel',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30.0),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0 ),
                  Text('jacksonlazaroict@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              )




            ],

          ),
      ),
    );
  }
}


