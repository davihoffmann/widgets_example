import 'package:flutter/material.dart';
import 'package:widgets_exemple/pages/hello_page_1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _pageView(),
          _coluna(context),
        ],
      ),
    );
  }

  Container _pageView() {
    return Container(
      margin: EdgeInsets.only(top: 22, bottom: 20),
      height: 300,
      child: PageView(
        children: <Widget>[
          _img('assets/images/dog1.png'),
          _img('assets/images/dog2.png'),
          _img('assets/images/dog3.png'),
          _img('assets/images/dog4.png'),
          _img('assets/images/dog5.png'),
        ],
      ),
    );
  }

  Column _coluna(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button('ListView', context),
            _button('Page 2', context),
            _button('Page 3', context),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button('Snack', context),
            _button('Dialog', context),
            _button('Toast', context),
          ],
        )
      ],
    );
  }

  _text() {
    return Text(
      'Hello World',
      style: TextStyle(
        fontSize: 25,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
      ),
    );
  }

  _img(String img) {
    return Image.asset(
      img,
    );
  }

  _button(String text, BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () => _onClickOk(context),
    );
  }

  void _onClickOk(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return HelloPage1();
          },
        ));
  }
}
