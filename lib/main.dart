import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int number = 1;
  Widget build(BuildContext context) {
    return Center(
      /*--------------------*/
      child: FlatButton(
        child: Image.asset('images/ball$number.png'),
        /*---------------------*/
        onPressed: () {
          setState(() {
            number=Random().nextInt(4)+1;
          });



          print('$number');
        },
        /*----------------*/
      ),
      /*------------------------*/
    );
  }
}

/*------------------------------------------------------*/
class BallPage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}
/*-----------------------------------------------------*/
