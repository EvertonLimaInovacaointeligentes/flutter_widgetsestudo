import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class stateTeste extends StatefulWidget {
  const stateTeste({Key? key}) : super(key: key);

  @override
  _stateTesteState createState() => _stateTesteState();
}

class _stateTesteState extends State<stateTeste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('image Stado'),
      ),
      body:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('teste'
              ),
            ],
          ),
        ) ,

    );
  }
}
