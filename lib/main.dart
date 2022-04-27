import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_popup_menu_button/Container/container_page.dart';
import 'package:flutter_popup_menu_button/Snackbar.dart';
import 'package:flutter_popup_menu_button/Tema/thema.dart';
import 'package:flutter_popup_menu_button/cloneInstagram/CloneInstagram.dart';
import 'package:flutter_popup_menu_button/columns/columns.dart';
import 'package:flutter_popup_menu_button/formulario/form.dart';
import 'package:flutter_popup_menu_button/layout_builder/layout.builder.dart';
import 'package:flutter_popup_menu_button/material_banner/material_banner_page.dart';
import 'package:flutter_popup_menu_button/pages/home/home_page.dart';
import 'package:flutter_popup_menu_button/botoes_rotacao_Texto/botoes_rotacao_texto.dart';
import 'package:flutter_popup_menu_button/scroos/singleChildscrollview.dart';
import 'package:flutter_popup_menu_button/stack/stack.page.dart';
import 'package:flutter_popup_menu_button/stack/stack.page2.dart';

import 'bottomNavigation/bottomNavigationBar.dart';
import 'circulo_avatar/circuloAvatar.dart';
import 'classes/gerencia_estado.dart';
import 'classes/http_david.dart';
import 'classes/splashs/splash.dart';
import 'dialogs/dialog.dart';
import 'imc_package/setStatePage/setStateImcPage.dart';
import 'leitura_json/leitura.dart';
import 'lista/lista.dart';
import 'listaBuilder/listaViewBuild.dart';
import 'listaSeparated/listaViewSeparated.dart';
import 'media_query/media.query.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (_) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'estudo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
        primarySwatch: Colors.red,
        primaryColorLight: Colors.amberAccent,
        secondaryHeaderColor: Colors.blue,
        fontFamily: 'Roboto',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: Colors.green),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.blueGrey,
          ),
        ),
      ),
      initialRoute: '/splash',
      routes: {
        '/home': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/Colunas': (_) => Colunas(),
        '/mediaquery': (_) => MediaQueryPage(),
        '/layoutbuilder': (_) => LayoutBuilderPage(),
        '/rotacaoTexto': (_) => BotoesRotacoesTextoPage(),
        '/scrollView': (_) => SingleScrollViewPage(),
        '/lista': (_) => ListViewPage(),
        '/listaViewBuild': (_) => listaViewBuild(),
        '/listaViewSeparated': (_) => listaViewSeparated(),
        '/TelaDialogs': (_) => TelaDialogs(),
        '/thema': (_) => thema(),
        '/snack': (_) => SnackBarTela(),
        '/form': (_) => FormPage(),
        '/leitura': (_) => Leitura(),
        '/stack': (_) => StackPage(),
        '/stackpage2': (_) => StackPage2(),
        '/bottonNavigation': (_) => BottomNavigationPage(),
        '/avatar': (_) => CirculoAvatarPage(),
        '/gerenciaDavid': (_) => GerenciaDavid(),
        '/httpDavid': (_) => httpDavid(),
        '/banner': (_) => MaterialBannerPage(),
        '/splash': (_) => SplashPage(),
        '/cloneInstagram': (_) => CloneInstagramPage(),
        '/imcState': (_) => imc_page(),
      },
    );
  }
}
