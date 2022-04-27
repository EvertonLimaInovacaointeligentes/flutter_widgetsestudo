import 'package:flutter/material.dart';

class Colunas extends StatelessWidget {
  const Colunas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colunas estudo'),
      ),
      body: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('teste1'),
            Text('teste2'),
            Text('teste3'),
          ],
        ),
      ),
    );
  }
}
