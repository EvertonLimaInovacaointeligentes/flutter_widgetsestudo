import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackBarTela extends StatelessWidget {
  const SnackBarTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final snackBar_ = SnackBar(
                  content: Text(
                    '          Usuário salvo com sucesso!',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0,
                    ),
                  ),
                  backgroundColor: Colors.amberAccent,
                );
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackBar_);
              },
              child: Text('Simple Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                final snackBar_ = SnackBar(
                  content: Text(
                    '          Usuário salvo com sucesso!',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0,
                    ),
                  ),
                  backgroundColor: Colors.amberAccent,
                  action: SnackBarAction(label: 'Desfazer', onPressed: (){
                    print('Clicado!');
                  }),
                );
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackBar_);

                //ScaffoldMessenger.of(context).removeCurrentSnackBar();
              },
              child: Text('Action Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
