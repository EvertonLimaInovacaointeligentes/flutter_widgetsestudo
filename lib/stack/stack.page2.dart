import 'package:flutter/material.dart';
import 'package:flutter_popup_menu_button/Container/container_page.dart';

class StackPage2 extends StatefulWidget {
  const StackPage2({Key? key}) : super(key: key);

  @override
  _StackPage2State createState() => _StackPage2State();
}

class _StackPage2State extends State<StackPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack page 2'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://i.ibb.co/6mWt0hF/jesus-cristo-vai-falar-contigo.jpg',),
              ),
              color: Colors.green,
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 40,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 8,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                  child: Text('Jesus Cristo', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Jesus Cristo nosso salvador, do mundo ninguem chega ao Pai, senão chegar primeiro em Jesus!'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
