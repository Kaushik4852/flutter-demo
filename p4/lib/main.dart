import 'package:flutter/material.dart';
import 'package:p4/qoutes.dart';

void main() => runApp(MaterialApp(
      home:Home(),
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Qoute> qoutes =[
    Qoute(author: 'Oscar Wilde', qoute: 'Be yourself; everyone else is already taken'),
    Qoute(author: 'Oscar Wilde', qoute: 'I have nothing to declare except my genius'),
    Qoute(author: 'Oscar Wilde', qoute: 'The truth is rarely pure and never simple')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QuoteList'),
        backgroundColor: Colors.blue[200],
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey[600],
      body:Column(
        children: qoutes.map((qoute) => Text('${qoute.qoute} - ${qoute.author}')).toList(),
      ),
    );
  }
}

