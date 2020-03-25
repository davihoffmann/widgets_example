import 'package:flutter/material.dart';

class HelloPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ola Pagina 3'),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Voltar'),
        onPressed: () => _onClickVoltar(context),
      ),
    );
  }

  _onClickVoltar(BuildContext context) {
    Navigator.pop(context, "tela 3");
  }
}
