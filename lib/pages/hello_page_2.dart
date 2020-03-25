import 'package:flutter/material.dart';
import 'package:widgets_exemple/widgets/blue_button.dart';

class HelloPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ola Pagina 2'),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
      child: BlueButton('Voltar', () => _onClickVoltar(context)),
    );
  }

  _onClickVoltar(BuildContext context) {
    Navigator.pop(context, "tela 2");
  }
}
