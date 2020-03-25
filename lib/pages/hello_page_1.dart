import 'package:flutter/material.dart';

class HelloPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ola Pagina 1'),
      ),
      body: Column(
        children: <Widget>[
          Text('Pagina 1'),
        ],
      ),
    );
  }
}