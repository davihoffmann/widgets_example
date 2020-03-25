import 'package:flutter/material.dart';
import 'package:widgets_exemple/widgets/blue_button.dart';

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
      child: BlueButton('Voltar', onPressed: () => _onClickVoltar(context), color: Colors.black,),
    );
  }

  _onClickVoltar(BuildContext context) {
    Navigator.pop(context, "tela 3");
  }
}
