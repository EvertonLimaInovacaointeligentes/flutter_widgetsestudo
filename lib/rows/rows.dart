

import 'package:flutter/material.dart';

class RowsColumnPage extends StatelessWidget {
  const RowsColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rows'),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('teste 1'),
          Text('teste 2'),
          Text('teste 3'),
        ],
      ),
    );
  }
}
