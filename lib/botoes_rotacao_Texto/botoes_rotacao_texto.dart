import 'package:flutter/material.dart';

class BotoesRotacoesTextoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botões e Rotação de texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    color: Colors.red,
                    child: Text(
                      'teste',
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),
                Icon(Icons.ac_unit_outlined),
              ],
            ),
            //ficou no lugar do flatbutton
            TextButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: TextButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.all(10),
                minimumSize: Size(50, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app),
            ),
            SizedBox(
              height: 10,
            ),
            //ficou no lugar resedbutton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                minimumSize: Size(120, 50),
                padding: EdgeInsets.all(10),
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Salvar',
              ),
            ),

            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.airplane_ticket),
              label: Text('teste'),
            ),

            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Abrir'),
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.blue),
                /*minimumSize: MaterialStateProperty.all(
                  Size(120, 50),
                ),*/
                minimumSize: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Size(150, 150);
                  }
                  return Size(120, 50);
                }),
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    }
                    return Colors.red;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){},
              child: Text('Inkwell'),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: Text('Gesture detecor'),
              onTap: ()=> print('clicado gesture'),
              onVerticalDragStart:(_)=> print('clicado gesture2'),
            ),
          ],
        ),
      ),
    );
  }
}
