import 'package:flutter/material.dart';

class listaViewSeparated extends StatelessWidget {
  const listaViewSeparated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista separada'),
      ),
      body: ListView.separated(
        itemCount: 5000,
        separatorBuilder: (context,index){
          return Divider(
            color: Colors.black,
            height: 10,
          );
          /*return Container(
            height: 10,
            color: Colors.black,
            width: MediaQuery.of(context).size.width,
          );*/
        },
        itemBuilder: (context,index){
          return ListTile(
            title: Text('Carregando o indice $index'),
            leading: CircleAvatar(),
            subtitle: Text('Flutter top'),
            trailing: Text('Ontem'),
          );
        },
      ),
    );
  }
}
