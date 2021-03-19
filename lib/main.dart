import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(initialRoute: '/',
  routes: {
    '/':(BuildContext context) => FirstScreen(),
    '/second':(BuildContext context) => SecondScreen(),
    },
  ));
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => new _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  Random random = new Random();

  Color color;

  void changeRandomColor() {
    setState(() {
      color = Color.fromARGB(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
  }

  List<String> aphorisms = [
    'Actions speak louder than words.',
    'All for one and one for all.',
    'Don`t fire until you see the whites of their eyes.',
    'Give a man a fish and you feed him for a day; teach a man to fish and you feed him for a lifetime.',
    'Early to bed, early to rise, makes a man healthy, wealthy, and wise.',
    'Give him an inch and hell take a mile.',
    'Give him enough rope and hell hang himself.',
    'He who fights and runs away, lives to fight another day.',
    'He who hesitates is lost.',
    'If you lie down with dogs, you wake up with fleas.',
    'Laugh, and the world laughs with you; weep, and you weep alone.',
    'You can fool some of the people all of the time, and all of the people some of the time, but you cant fool all of the people all of the time.',
    'You can kill a man but you cant kill an idea.',
    'You can take the boy out of the country, but you cant take the country out of the boy.',
    'You made your bed, now lie in it.',
    'You need to take a bull by the horns, and a man by his word.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
      onTap: changeRandomColor,
      child: Container(
        color: color,
        child: Center(
          child: Text(
            aphorisms[random.nextInt(aphorisms.length)],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    ),
    );
  }
}



class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          child: Center(
            child: Text(
                'Hey there',
              style: TextStyle(
                fontSize: 50.0,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Text(
                'Start',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
