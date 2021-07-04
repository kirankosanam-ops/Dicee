/*
 * *
 *  * Created by kmani on 7/4/21, 9:01 PM
 *  * Copyright (c) 2021 . All rights reserved.
 *  * Last modified 7/4/21, 8:58 PM
 *
 */

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Dicee'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _diceCounter1 = 1;
  int _diceCounter2 = 1;

  int changeDice() => Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.pinkAccent,
              padding: EdgeInsets.all(40.0),
              child: Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _diceCounter2 = changeDice();
                    });
                  },
                  child: Image.asset('images/dice$_diceCounter2.png'),
                ),
              ),
            ),
            Container(
              color: Colors.purpleAccent,
              padding: EdgeInsets.all(40.0),
              child: Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _diceCounter1 = changeDice();
                    });
                  },
                  child: Image.asset('images/dice$_diceCounter1.png'),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
