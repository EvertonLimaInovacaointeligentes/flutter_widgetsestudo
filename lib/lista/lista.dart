import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
             Container(
              height: 250,
              color: Colors.amber,
            ),
            Container(
              height: 250,
              color: Colors.blue,
            ),
            Container(
             height: 250,
              color: Colors.red,
            ),
            Container(
              height: 250,
              color: Colors.yellow,
            ),
             Container(
              height: 250,
              color: Colors.green,
            ),
             Container(
              height: 250,
              color: Colors.grey,
            ),
          ],
        ));
  }
}
