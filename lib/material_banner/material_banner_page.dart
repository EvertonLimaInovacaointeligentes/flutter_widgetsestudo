import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banner'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(100.0),
                child: ElevatedButton(
                  onPressed: () {
                    //para o material Banner é necessario ter uma ação sempre para poder funcionar
                    //forceActionsBellow força para fixar na tela
                    final banner_ = MaterialBanner(
                      forceActionsBelow: true,
                      actions: [
                        TextButton(onPressed: (){
                          ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                        }, child: Text('cancelar')),
                      ],
                      content: Text(
                        '          Usuário salvo com sucesso!',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20.0,
                        ),
                      ),
                      backgroundColor: Colors.amberAccent,
                    );
                    
                    ScaffoldMessenger.of(context).showMaterialBanner(banner_);
                    Future.delayed(Duration(seconds: 2),(){
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    });
                  },
                  child: Text('Simple Snackbar'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
