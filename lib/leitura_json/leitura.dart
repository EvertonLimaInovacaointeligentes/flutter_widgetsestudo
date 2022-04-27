import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'cidade.dart';

class Leitura extends StatefulWidget {
  const Leitura({Key? key}) : super(key: key);

  @override
  _LeituraState createState() => _LeituraState();
}

class _LeituraState extends State<Leitura> {
  var cidades = <Cidade>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadCities();
  }

  void _loadCities() async {
    final cidadesJson = await rootBundle.loadString('lib/assets/cidade.json');
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      var cidadeList = json.decode(cidadesJson);
      cidades = cidadeList.map<Cidade>((city) => Cidade.fromMap(city)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('leitura json'),
        ),
        body: ListView.builder(
          itemCount: cidades.length,
          itemBuilder: (context, index) {
            var cidade = cidades[index];
            return ListTile(
              title: Text(cidade.cidade),
              subtitle: Text(cidade.estado),
            );
          },
        ),
    );
  }
}
