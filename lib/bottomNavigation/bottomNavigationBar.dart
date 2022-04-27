import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_popup_menu_button/bottomNavigation/page1.dart';

import 'page2.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BotonNavigationBar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: (index) {
          print('indice clicado: $index');
          setState(() {
            indice = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Pagina 1',
            icon: Icon(Icons.add_a_photo_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Pagina 1',
            icon: Icon(Icons.airline_seat_legroom_extra_sharp),
          ),
        ],
      ),
      body: IndexedStack(
        index: indice,
        children: [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
