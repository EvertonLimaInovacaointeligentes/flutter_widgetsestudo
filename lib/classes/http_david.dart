import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class httpDavid extends StatefulWidget {
  const httpDavid({Key? key}) : super(key: key);

  @override
  _httpDavidState createState() => _httpDavidState();
}

class _httpDavidState extends State<httpDavid> {
  ValueNotifier<List<Post>> posts = ValueNotifier<List<Post>>([]);
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  callAPI() async {
    var client = http.Client();
    try {
      inLoader.value=true;
      var response = await client.get(
        Uri.parse('http://jsonplaceholder.typicode.com/posts'),
      );
      var decodedResponse = jsonDecode(response.body) as List;
      posts.value = decodedResponse.map((e) => Post.fromJson(e)).toList();
    } finally {
      client.close();
      inLoader.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('http David'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AnimatedBuilder(
                animation: Listenable.merge([posts, inLoader]),
                // ValueListenableBuilder<List<Post>>(
                //valueListenable: posts,
                builder: (_, __) => inLoader.value
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: posts.value.length,
                        itemBuilder: (_, idx) => ListTile(
                          title: Text(posts.value[idx].title),
                        ),
                      ),
              ),
              ElevatedButton(
                onPressed: () => callAPI(),
                child: Text('Calcular'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Post {
  final int userID;
  final int id;
  final String title;
  final String body;

  Post(this.userID, this.id, this.title, this.body);

  factory Post.fromJson(Map json) {
    return Post(json['userId'], json['id'], json['title'], json['body']);
  }

  @override
  String toString() {
    return 'id: $id';
  }
}
