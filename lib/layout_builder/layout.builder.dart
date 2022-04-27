import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final medida = MediaQuery.of(context);
    print('largura: ' + medida.size.width.toString());
    print('altura: ' + medida.size.height.toString());
    print('Orientaçao: ' + medida.orientation.toString());
    print('Tamanho appDefault: ' + kToolbarHeight.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder Page'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Container(
                  color: Colors.red,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight/2,
                ),
                Container(
                  color: Colors.amber,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight/2,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
