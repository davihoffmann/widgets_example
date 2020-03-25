import 'package:flutter/material.dart';

class Dog {
  final String nome;
  final String foto;

  Dog(this.nome, this.foto);
}

class HelloListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Exemple'),
      ),
      body: _body(),
    );
  }

  _body() {
    List<Dog> dogs = [
      Dog('Jack Russel', 'assets/images/dog1.png'),
      Dog('Labrador', 'assets/images/dog2.png'),
      Dog('Pug', 'assets/images/dog3.png'),
      Dog('Rottweiler', 'assets/images/dog4.png'),
      Dog('Pastor', 'assets/images/dog5.png'),
    ];

    return ListView.builder(
      itemCount: dogs.length,
      itemExtent: 250,
      itemBuilder: (context, index) {
        Dog dog = dogs[index];
        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _img(dog.foto),
            Container(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Text(
                  dog.nome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }
}
