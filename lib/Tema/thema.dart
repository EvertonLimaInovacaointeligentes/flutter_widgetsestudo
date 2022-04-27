import 'package:flutter/material.dart';
import 'package:flutter_popup_menu_button/Container/container_page.dart';

class thema extends StatelessWidget {
  const thema({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thema'),
        ),
        body: Theme(
          data: Theme.of(context).copyWith(
            primaryColorLight:Colors.red,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
            ),
          ),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  child: Text('Salvar'),
                  onPressed: () {},
                ),
                Container(
                  width: 100,
                  height: 200,
                  color: Theme.of(context).primaryColorLight,
                ),
                Builder(builder: (contextInterno){
                  return Container(
                    width: 100,
                    height: 200,
                    color: Theme.of(contextInterno).primaryColorLight,
                  );
                }),
                TextButton(onPressed: (){}, child: Text('teste'),),
              ],
            ),
          ),
        ));
  }
}
