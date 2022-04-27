import 'package:flutter/material.dart';

class listaViewBuild extends StatelessWidget {
  const listaViewBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listView builder'),
      ),
      body: ListView.builder(
        itemCount: 5000,
          itemBuilder: (context,index){
          return ListTile(
            title: Text('Carregando o indice $index'),
            leading: CircleAvatar(),
            subtitle: Text('Flutter top'),
          );
          },
      ),
    );
  }
}
