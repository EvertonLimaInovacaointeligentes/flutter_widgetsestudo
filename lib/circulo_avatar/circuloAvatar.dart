import 'package:flutter/material.dart';
import 'package:flutter_popup_menu_button/Container/container_page.dart';

class CirculoAvatarPage extends StatelessWidget {
  const CirculoAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle Avatar'),
      ),
      body: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /*Container(
            width: 100,
            height: 100,
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pinimg.com/736x/ef/57/3a/ef573a2e64a53cb49ca572edebe62d40.jpg'),
            ),
          ),*/
          ImageAvatar(
              urlImage:
                  "https://i.pinimg.com/736x/ef/57/3a/ef573a2e64a53cb49ca572edebe62d40.jpg"),
          ImageAvatar(urlImage: "https://img.freepik.com/vetores-gratis/sessao-de-desenho-animado-de-cachorro-feliz_160606-228.jpg?size=338&ext=jpg"),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;

  const ImageAvatar({Key? key, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red,Colors.black],
              begin: Alignment.topCenter,
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Text("AO VIVO",style: TextStyle(fontSize: 8),),
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5)
              ),
            ),
          ),
        ),
      ],
    );
  }
}
