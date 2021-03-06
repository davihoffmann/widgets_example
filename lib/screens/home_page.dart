import 'package:flutter/material.dart';
import 'package:widgets_exemple/pages/drawer_list.dart';
import 'package:widgets_exemple/pages/hello_page_1.dart';
import 'package:widgets_exemple/pages/hello_page_2.dart';
import 'package:widgets_exemple/pages/hello_page_3.dart';
import 'package:widgets_exemple/pages/list_view_v2.dart';
import 'package:widgets_exemple/utils/nav.dart';
import 'package:widgets_exemple/widgets/blue_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
          bottom: TabBar(tabs: [
            Tab(text: 'Tab 1'),
            Tab(text: 'Tab 2'),
            Tab(text: 'Tab 3'),
          ]),
        ),
        body: TabBarView(children: [
          _body(),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.green,
          )
        ]),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              heroTag: 'btn1',
              child: Icon(Icons.add),
              onPressed: _onClickFab,
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              heroTag: 'btn2',
              child: Icon(Icons.favorite),
              onPressed: _onClickFab,
            )
          ],
        ),
        drawer: DrawerList(),
      ),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _text(),
          _pageView(),
          _coluna(),
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

  _coluna() {
    return Builder(builder: (context) {
      return Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BlueButton('ListView',
                  onPressed: () => _onClickNavigator(context, ListViewV2())),
              BlueButton('Page 1',
                  onPressed: () => _onClickNavigator(context, HelloPage1())),
              BlueButton('Page 2',
                  onPressed: () => _onClickNavigator(context, HelloPage2())),
              BlueButton('Page 3',
                  onPressed: () => _onClickNavigator(context, HelloPage3())),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BlueButton('Snack', onPressed: () => _onClickSnack(context)),
              BlueButton('Dialog', onPressed: () => _onClickDialog(context)),
              BlueButton('Toast', onPressed: _onClickToast),
            ],
          )
        ],
      );
    });
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
      fit: BoxFit.cover,
    );
  }

  void _onClickNavigator(BuildContext context, Widget page) async {
    String s = await push(context, page);
    print(s);
  }

  _onClickSnack(BuildContext context) {
    return Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Olá'),
        action: SnackBarAction(
          label: "OK",
          onPressed: () {
            print('OK');
          },
        ),
      ),
    );
  }

  _onClickDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: Text('Flutter é muito legal'),
              actions: <Widget>[
                FlatButton(
                    child: Text('Ok'),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                FlatButton(
                    child: Text('Cancelar'),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          );
        });
  }

  _onClickToast() {
    Fluttertoast.showToast(
      msg: "Flutter é muito legal",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 5,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  void _onClickFab() {
    print('adicionar');
  }
}
