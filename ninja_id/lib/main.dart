import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            avatarDivider(),
            R123(),
            const Padding(padding: EdgeInsets.only(bottom: 10.0)),
            Container(
              child: Text('$level',style: TextStyle(
                color: Colors.amber[600],
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
              padding: EdgeInsets.only(left: 30),
            ),
            Padding(padding: EdgeInsets.only(bottom: 40.0)),
            Row(
              children: [
                Padding(padding:  EdgeInsets.only(left: 30)),
                Icon(Icons.mail ,color: Colors.grey,),
                Padding(padding: EdgeInsets.only(right: 10)),
                Text('chung.li@thenetninja.co.uk',style: TextStyle(color: Colors.grey,fontSize: 20), ),
              ],
            ),

          ],
        ),
      ),
      backgroundColor: Colors.grey[900],
      floatingActionButton: FloatingActionButton(
        onPressed: () {setState((){level+=1;});},
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}

//========================Avatar and devider ============================//
class avatarDivider extends StatelessWidget {
  const avatarDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 25.0)),
        Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/img.png'),
            radius: 50.0,
          ),
        ),
        Divider(
          height: 90.0,
          thickness: 1,
          color: Colors.grey[800],
        ),
      ],
    );
  }
}

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'NAME',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Text(
            'Chun-Li',
            style: TextStyle(
              color: Colors.amber[600],
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 40.0)),
          Text(
            'CURRENT NINJA LEVEL',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Text(
            'l',
            style: TextStyle(
              color: Colors.amber[600],
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 40.0)),
          Row(
            children: [
              Icon(
                Icons.mail,
                color: Colors.grey,
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Text(
                'chung.li@thenetninja.co.uk',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class R123 extends StatelessWidget {
  const R123({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'NAME',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Text(
            'Chun-Li',
            style: TextStyle(
              color: Colors.amber[600],
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 40.0)),
          Text(
            'CURRENT NINJA LEVEL',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 10.0)),
        ],
      ),
      padding: EdgeInsets.only(left: 30),
    );
  }
}

/*


class _BodyState extends State<Body> {
  int lvl = 0;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 25.0)),
              Center(
                child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img.png'),
                radius:50.0,
                ),
              ),
              Divider(
                height: 90.0,
                thickness: 1,
                color: Colors.grey[800],
              ),
            Container(
              padding: EdgeInsets.only(left: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                           Text('NAME',style: TextStyle(
                            color: Colors.grey,
                            letterSpacing: 2.0,
                           ),),
                          Padding(padding: EdgeInsets.only(bottom: 10.0)),
                          Text('Chun-Li',style: TextStyle(
                            color: Colors.amber[600],
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),),
                          Padding(padding: EdgeInsets.only(bottom: 40.0)),
                          Text('CURRENT NINJA LEVEL',style: TextStyle(
                            color: Colors.grey,
                            letterSpacing: 2.0,
                          ),),
                          const Padding(padding: EdgeInsets.only(bottom: 10.0)),
                          Text('l',style: TextStyle(
                            color: Colors.amber[600],
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),),
                          Padding(padding: EdgeInsets.only(bottom: 40.0)),
                          Row(
                            children: [
                              Icon(Icons.mail ,color: Colors.grey,),
                              Padding(padding: EdgeInsets.only(right: 10)),
                              Text('chung.li@thenetninja.co.uk',style: TextStyle(color: Colors.grey,fontSize: 20), ),
                            ],
                          ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
*/
