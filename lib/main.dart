import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Ask Me Anything")),
        backgroundColor: Colors.blue,
      ),
      body: BallPage(),
    ),
  ));
}

/*class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              child: Image.asset('images/ball1.png'),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              child: Image.asset('images/ball2.png'),
            ),
          ),
        ],
      ),
    );
  }
}*/
/*class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int leftBallNumber = 1;
  int rightBallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                leftBallNumber = 4;
              });
            },
            child: Image.asset('images/ball$leftBallNumber.png'),
          ),
        ),
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                rightBallNumber = 5;
              });
            },
            child: Image.asset('images/ball$rightBallNumber.png'),
          ),
        ),
      ],
    ));
  }
}*/

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int leftBallNumber = 1;
  int rightBallNumber = 1;

  void changeBall() {
    leftBallNumber = Random().nextInt(5) + 1;
    rightBallNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                changeBall();
              });
            },
            child: Image.asset('images/ball$leftBallNumber.png'),
          ),
        ),
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                changeBall();
              });
            },
            child: Image.asset('images/ball$rightBallNumber.png'),
          ),
        ),
      ],
    ));
  }
}
