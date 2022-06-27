import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Second App'),
        backgroundColor: Colors.red[600],
      ),
      body: homeBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('2nd'),
        backgroundColor: Colors.green[600],
      ),
    );
  }
}

//==========================Body=======================================//
class homeBody extends StatelessWidget {
  const homeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(20),
              child: Text('container 1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.redAccent,
              padding: EdgeInsets.all(20),
              child: Text('container 2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.purple,
              padding: EdgeInsets.all(20),
              child: Text('container 3'),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/Images/img.png'),fit: BoxFit.fill)),
      padding: EdgeInsets.all(200),
    );
  }
}
