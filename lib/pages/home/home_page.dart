import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

enum PopupMenupages {
  container,
  row_columns,
  mediaquery,
  layoutbuilder,
  rotacaoTexto,
  singleScroolView,
  lista,
  listaViewBuild,
  listaViewSeparated,
  TelaDialogs,
  thema,
  snackBar,
  formulario,
  leitura,
  stackPage,
  stackpage2,
  butonNavigationBar,
  CirculoAvatarPage,
  gerenciaDavid,
  httpDavid,
  banner,
  cloneInstagram,
  splash,
  imcState,
}

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenupages>(
              tooltip: 'selecione o item do menu',
              icon: Icon(Icons.restaurant_menu),
              onSelected: (PopupMenupages valueSelected) {
                print('entrou no value');
                switch (valueSelected) {
                  case PopupMenupages.container:
                    print('entrou no case');
                    Navigator.of(context).pushNamed('/container');
                    break;
                  case PopupMenupages.row_columns:
                    Navigator.of(context).pushNamed('/Colunas');
                    break;
                  case PopupMenupages.mediaquery:
                    Navigator.of(context).pushNamed('/mediaquery');
                    break;
                  case PopupMenupages.layoutbuilder:
                    Navigator.of(context).pushNamed('/layoutbuilder');
                    break;
                  case PopupMenupages.rotacaoTexto:
                    Navigator.of(context).pushNamed('/rotacaoTexto');
                    break;
                  case PopupMenupages.singleScroolView:
                    Navigator.of(context).pushNamed('/scrollView');
                    break;
                  case PopupMenupages.lista:
                    Navigator.of(context).pushNamed('/lista');
                    break;
                  case PopupMenupages.listaViewBuild:
                    Navigator.of(context).pushNamed('/listaViewBuild');
                    break;
                  case PopupMenupages.listaViewSeparated:
                    Navigator.of(context).pushNamed('/listaViewSeparated');
                    break;
                  case PopupMenupages.TelaDialogs:
                    Navigator.of(context).pushNamed('/TelaDialogs');
                    break;
                  case PopupMenupages.thema:
                    Navigator.of(context).pushNamed('/thema');
                    break;
                  case PopupMenupages.snackBar:
                    Navigator.of(context).pushNamed('/snack');
                    break;
                  case PopupMenupages.formulario:
                    Navigator.of(context).pushNamed('/form');
                    break;
                  case PopupMenupages.leitura:
                    Navigator.of(context).pushNamed('/leitura');
                    break;
                  case PopupMenupages.stackPage:
                    Navigator.of(context).pushNamed('/stack');
                    break;
                  case PopupMenupages.stackpage2:
                    Navigator.of(context).pushNamed('/stackpage2');
                    break;
                  case PopupMenupages.butonNavigationBar:
                    Navigator.of(context).pushNamed('/bottonNavigation');
                    break;
                  case PopupMenupages.CirculoAvatarPage:
                    Navigator.of(context).pushNamed('/avatar');
                    break;
                  case PopupMenupages.gerenciaDavid:
                    Navigator.of(context).pushNamed("/gerenciaDavid");
                    break;
                  case PopupMenupages.httpDavid:
                    Navigator.of(context).pushNamed("/httpDavid");
                    break;
                  case PopupMenupages.splash:
                    Navigator.of(context).pushNamed("/splash");
                    break;
                  case PopupMenupages.banner:
                    Navigator.of(context).pushNamed("/banner");
                    break;
                  case PopupMenupages.cloneInstagram:
                    Navigator.of(context).pushNamed("/cloneInstagram");
                    break;
                  case PopupMenupages.imcState:
                    Navigator.of(context).pushNamed("/imcState");
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<PopupMenupages>>[
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.container,
                    child: Text('Container'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.row_columns,
                    child: Text('colunas'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.mediaquery,
                    child: Text('mediaQuery'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.layoutbuilder,
                    child: Text('layoutbuilder'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.rotacaoTexto,
                    child: Text('rotacaoTexto'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.singleScroolView,
                    child: Text('scrollView'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.lista,
                    child: Text('lista'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.listaViewBuild,
                    child: Text('listaViewBuild'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.listaViewSeparated,
                    child: Text('listaViewSeparated'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.TelaDialogs,
                    child: Text('TelaDialogs'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.thema,
                    child: Text('Thema'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.snackBar,
                    child: Text('Snack'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.formulario,
                    child: Text('Formulario'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.leitura,
                    child: Text('leitura'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.stackPage,
                    child: Text('sctack page'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.stackpage2,
                    child: Text('stackpage2'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.butonNavigationBar,
                    child: Text('bottonNavigation'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.CirculoAvatarPage,
                    child: Text('Circulo Avatar'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.gerenciaDavid,
                    child: Text('gerenciaDavid'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.httpDavid,
                    child: Text('httpDavid'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.banner,
                    child: Text('banner'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.cloneInstagram,
                    child: Text('clone Instagram'),
                  ),
                  PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.imcState,
                    child: Text('Imc State'),
                  ),
                  /*PopupMenuItem<PopupMenupages>(
                    value: PopupMenupages.splash,
                    child: Text('splash'),
                  ),*/
                ];
              }),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            /*Center(
              child: Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_syqnfe7c.json',
                repeat: true,
                animate: true,
                alignment: Alignment.center,
              ),
            ),*/
            TextButton(
              onPressed: () {},
              child: Text('teste'),
            ),
          ],
        ),
      ),
    );
  }
}
