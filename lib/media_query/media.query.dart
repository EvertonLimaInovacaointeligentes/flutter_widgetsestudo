import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final medida = MediaQuery.of(context);
    print('largura: ' + medida.size.width.toString());
    print('altura: ' + medida.size.height.toString());
    print('Orientaçao: ' + medida.orientation.toString());
    print('Tamanho appDefault: ' + kToolbarHeight.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: medida.size.width,
              height: medida.size.height * .5,
            ),
            Container(
              color: Colors.amber,
              width: medida.size.width,
              height: medida.size.height * .5,
            ),
          ],
        ),
      ),
    );
  }
}
