import 'package:flutter/material.dart';
import 'package:widgets_exemple/pages/hello_list_view.dart';

class DogPage extends StatelessWidget {

  final Dog dog;

  DogPage(this.dog);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dog.nome),
      ),
      body: _body(),
    );
  }

  _body() {
    return Image.asset(dog.foto);
  }
}
