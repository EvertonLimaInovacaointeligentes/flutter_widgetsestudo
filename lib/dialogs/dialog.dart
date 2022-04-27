import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_popup_menu_button/dialogs/dialog.padrao.dart';

class TelaDialogs extends StatelessWidget {
  const TelaDialogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (_) {
                      if (Platform.isIOS) {
                        return CupertinoAlertDialog(
                          title: Text('IOS title cupertio'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text('Deseja salvar'),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {},
                              child: Text('Salvar'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text('cancelar'),
                            )
                          ],
                        );
                      } else {
                        return DialogPadrao(context, 'Dialog');
                      }
                    });
              },
              child: Text('Dialog'),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return SimpleDialog(
                        title: Text('dialogo simples'),
                        contentPadding: EdgeInsets.all(10),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Titulo x'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, left: 240.0),
                              child: Text('X'),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('SimpleDialog')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Alerta dialogo'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text('Deseja realmente salvar tela??'),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {},
                              child: Text('Confirmar'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text('Cancelar'),
                            ),
                          ],
                        );
                      });
                },
                child: Text('Alert Dialog')),
            ElevatedButton(
                onPressed: () async {
                  final selected = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  print('O horario selecionado foi : $selected');
                },
                child: Text('Time Picker')),
            ElevatedButton(
                onPressed: () async {
                  final selectedPicker = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                  );
                  print('valor datePicker: $selectedPicker');
                  //showAboutDialog(context: context);
                },
                child: Text('Date Picker')),
            ElevatedButton(
              onPressed: () async {
                showAboutDialog(
                    context: context,
                    applicationIcon: Icon(Icons.flutter_dash));
                //showAboutDialog(context: context);
              },
              child: Text('About dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
