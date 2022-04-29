import 'package:flutter/material.dart';

class ModalShettButtom extends StatelessWidget {
  const ModalShettButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example bootsheet'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton(
                text: 'Simples botton sheet',
                onClicked: () => showModalBottomSheet(
                  //deixa fixo o bottom sheet sem fechar
                  enableDrag: false,
                  isDismissible: false,
                  //deixa habilitado o scrooll no componente
                  //isScrollControlled: true,
                  //{Color? backgroundColor}
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15),
                  )),
                  context: context,
                  builder: (context) => buildSheet(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildSheet(BuildContext context) {
  //return DraggableScrollableSheet(
  /*initialChildSize: 0.9,
    minChildSize: 0,
    maxChildSize: 0.9,*/
  /*builder: (_, controller) =>*/ return  Container(
      //color: Colors.red,
    //height: 150.0,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      //é o padding dentro do container que controle os espaços
      // padding: const EdgeInsets.only(left: 8.0,top: 0.0,right: 8.0),
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 8.0, top: 0.0, right: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () => Fechar(context),
                icon: Icon(Icons.clear),
              ),
            ),
            Image.asset('lib/assets/oferta.png',height: 200,),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {},
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );

  // );
}

Widget buildButton({
  required String text,
  required VoidCallback onClicked,
}) {
  return ElevatedButton(
    onPressed: onClicked,
    child: Text(
      text,
      style: TextStyle(fontSize: 20),
    ),
  );

  /*return Column(
    children: [
      Align(
        alignment: Alignment.centerRight,
        child: IconButton(
          onPressed: () => Fechar(context),
          icon: Icon(Icons.clear),
        ),
      ),
      ElevatedButton(
        onPressed: onClicked,
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ),
    ],
  );*/
}

void Fechar(BuildContext context) {
  Navigator.of(context).pop();
}
