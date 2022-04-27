import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_popup_menu_button/leitura_json/instagram.dart';

class CloneInstagramPage extends StatelessWidget {
  const CloneInstagramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.white,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.white,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter_outlined,color: Colors.white),
            label: '',
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 15.0,right: 12.0),
            child: SafeArea(
              child: Material(
                color: Colors.black,
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 25,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.red,
                      child: Cabecalho(
                        titulo: 'Instagram',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 100,
                      child: TimeLine3(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: timeLine(
                        aovido: false,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      color: Colors.black,
                      child: bodyPage(),
                    ),
                    Container(
                      child: timeLine(
                        aovido: false,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      color: Colors.black,
                      child: bodyPage(),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),

    );
  }
}

class bodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Image.network(
            'https://img.freepik.com/vetores-gratis/sessao-de-desenho-animado-de-cachorro-feliz_160606-228.jpg?size=338&ext=jpg'),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            Icon(
              Icons.question_answer,
              color: Colors.white,
            ),
            Icon(
              Icons.send,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            SizedBox(
              width: 5,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.account_balance_wallet_rounded, color: Colors.white),
          ],
        )
      ],
    );
  }
}

class timeLine extends StatelessWidget {
  final bool aovido;

  const timeLine({Key? key, required this.aovido}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: [
          Container(
            child: ImageAvatar(
              urlImage:
                  "https://img.freepik.com/vetores-gratis/sessao-de-desenho-animado-de-cachorro-feliz_160606-228.jpg?size=338&ext=jpg",
              largura: 60,
              altura: 60,
              aovido: aovido,
              titulo: 'teste1',
              subtitulo: 'teste1',
            ),
          ),
          Text(
            'pet 1',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class Cabecalho extends StatelessWidget {
  final String titulo;

  const Cabecalho({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titulo,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'VeganStylePersonalUse',
                fontSize: 20.0),
          ),
          Container(
            color: Colors.black,
            width: 160,
          ),
          Icon(
            Icons.add_box_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          Icon(
            Icons.send,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class TimeLine3 extends StatefulWidget {
  const TimeLine3({Key? key}) : super(key: key);

  @override
  _TimeLine3State createState() => _TimeLine3State();
}

class _TimeLine3State extends State<TimeLine3> {
  var instagra = <Instagram>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadCities();
  }

  void _loadCities() async {
    final instagramJson =
        await rootBundle.loadString('lib/assets/instagram.json');
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      var instagramList = json.decode(instagramJson);
      instagra = instagramList
          .map<Instagram>((insta) => Instagram.fromMap(insta))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: instagra.length,
      itemBuilder: (context, index) {
        var inst = instagra[index];
        return ImageAvatar(
          urlImage: inst.foto,
          altura: 100,
          largura: 100,
          aovido: true,
          titulo: inst.titulo,
          subtitulo: inst.subtitulo,
        );
      },
    );
  }
}

class TimeLine2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ImageAvatar(
            urlImage:
                "https://i.pinimg.com/736x/ef/57/3a/ef573a2e64a53cb49ca572edebe62d40.jpg",
            altura: 100,
            largura: 100,
            aovido: true,
            titulo: 'teste1',
            subtitulo: 'teste1',
          ),
          ImageAvatar(
            urlImage:
                "https://img.freepik.com/vetores-gratis/sessao-de-desenho-animado-de-cachorro-feliz_160606-228.jpg?size=338&ext=jpg",
            largura: 100,
            altura: 100,
            aovido: false,
            titulo: 'teste1',
            subtitulo: 'teste1',
          ),
          ImageAvatar(
            urlImage:
                "https://i.pinimg.com/736x/ef/57/3a/ef573a2e64a53cb49ca572edebe62d40.jpg",
            largura: 100,
            altura: 100,
            aovido: false,
            titulo: 'teste1',
            subtitulo: 'teste1',
          ),
          ImageAvatar(
            urlImage:
                "https://img.freepik.com/vetores-gratis/sessao-de-desenho-animado-de-cachorro-feliz_160606-228.jpg?size=338&ext=jpg",
            largura: 100,
            altura: 100,
            aovido: false,
            titulo: 'teste1',
            subtitulo: 'teste1',
          ),
          ImageAvatar(
            urlImage:
                "https://i.pinimg.com/736x/ef/57/3a/ef573a2e64a53cb49ca572edebe62d40.jpg",
            largura: 100,
            altura: 100,
            aovido: true,
            titulo: 'teste1',
            subtitulo: 'teste1',
          ),
          ImageAvatar(
            urlImage:
                "https://img.freepik.com/vetores-gratis/sessao-de-desenho-animado-de-cachorro-feliz_160606-228.jpg?size=338&ext=jpg",
            largura: 100,
            altura: 100,
            aovido: false,
            titulo: 'teste1',
            subtitulo: 'teste1',
          ),
          ImageAvatar(
            urlImage:
                "https://i.pinimg.com/736x/ef/57/3a/ef573a2e64a53cb49ca572edebe62d40.jpg",
            altura: 100,
            largura: 100,
            aovido: false,
            titulo: 'teste1',
            subtitulo: 'teste1',
          ),
          ImageAvatar(
            urlImage:
                "https://img.freepik.com/vetores-gratis/sessao-de-desenho-animado-de-cachorro-feliz_160606-228.jpg?size=338&ext=jpg",
            largura: 100,
            altura: 100,
            aovido: false,
            titulo: 'teste1',
            subtitulo: 'teste1',
          ),
        ],
      ),
    );
  }
}

class Timeline extends StatelessWidget {
  final String titulo;

  const Timeline({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Cabecalho(
            titulo: 'titulo',
          ),
        ),
      ],
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  final double altura;
  final double largura;
  final bool aovido;
  final String titulo;
  final String subtitulo;

  const ImageAvatar({
    Key? key,
    required this.urlImage,
    required this.altura,
    required this.largura,
    required this.aovido,
    required this.titulo,
    required this.subtitulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: largura,
          height: altura,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.black],
              begin: Alignment.topCenter,
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: largura,
          height: altura,
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        Visibility(
          child: Container(
            height: 100,
            width: 100,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Text(
                  "AO VIVO",
                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.green, borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ),
          visible: aovido,
        ),
      ],
    );
  }
}
