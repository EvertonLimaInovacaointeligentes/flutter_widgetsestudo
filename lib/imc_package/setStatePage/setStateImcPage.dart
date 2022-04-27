import 'package:flutter/material.dart';

class imc_page extends StatefulWidget {
  const imc_page({Key? key}) : super(key: key);

  @override
  _imc_pageState createState() => _imc_pageState();
}

class _imc_pageState extends State<imc_page> {
  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imc State'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //_goToPage(context,SplashPage());
              },
              child: Text('SetState'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('ValueNotifier'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Change Notifier'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Bloc partten (Stream)'),
            ),
          ],
        ),
      ),
    );
  }
}
