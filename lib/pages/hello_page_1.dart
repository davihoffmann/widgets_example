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
          Expanded(
            flex: 6,
            child: PageView(
              children: <Widget>[
                _img('assets/images/dog1.png'),
                _img('assets/images/dog2.png'),
                _img('assets/images/dog3.png'),
                _img('assets/images/dog4.png'),
                _img('assets/images/dog5.png'),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: PageView(
              children: <Widget>[
                _img('assets/images/dog1.png'),
                _img('assets/images/dog2.png'),
                _img('assets/images/dog3.png'),
                _img('assets/images/dog4.png'),
                _img('assets/images/dog5.png'),
              ],
            ),
          )
        ],
      ),
    );
  }

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }
}
