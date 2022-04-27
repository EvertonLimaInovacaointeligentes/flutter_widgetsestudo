import 'package:flutter/material.dart';

class SingleScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Single scrollview'),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: Colors.amber,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: Colors.blue,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: Colors.yellow,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: Colors.green,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: Colors.grey,
            ),
          ],
        )));
  }
}
