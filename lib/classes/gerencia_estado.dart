import 'dart:math';

import 'package:flutter/material.dart';

class GerenciaDavid extends StatefulWidget {
  const GerenciaDavid({Key? key}) : super(key: key);

  @override
  _GerenciaDavidState createState() => _GerenciaDavidState();
}

class _GerenciaDavidState extends State<GerenciaDavid> {
//int valorAleatorio=0;
ValueNotifier<int> valorAleatorio=ValueNotifier<int>(0);
random() async{
  for(int i=0;i<10;i++){
    await Future.delayed(Duration(seconds: 1));

      valorAleatorio.value=Random().nextInt(1000);
  }
}
  @override
  Widget build(BuildContext context) {
  print('Build criado');
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerencia Estado David'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ValueListenableBuilder(valueListenable: valorAleatorio, builder: (_, value, __) => Text('Resultado: $value'),),
              ElevatedButton(
                onPressed: () =>random(),
                child: Text('Calcular'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
