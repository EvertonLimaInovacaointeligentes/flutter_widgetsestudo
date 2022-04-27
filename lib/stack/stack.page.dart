import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Page'),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: Colors.blue,
            width: 50,
            height: 50,
          ),
          Container(
            color: Colors.green,
          ),
          Positioned(
            top: 60,
            left: 40,
            child: Container(
              color: Colors.red,
              width: 300,
              height: 300,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.yellow,
              width: 150,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
