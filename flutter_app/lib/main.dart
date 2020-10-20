import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('История'),
      ),
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          new AppBar(
            title: new Text('Меню'),
          ),
          ButtonTheme(
            height: 60,
            child: RaisedButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => MyHomePage()));},
              child: Text('История', style: TextStyle(fontSize: 15)),
              color: Colors.white,
            ),
          ),
          ButtonTheme(
            height: 60,
            child: RaisedButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => TemplatesPage()));},
              child: Text('Шаблоны', style: TextStyle(fontSize: 15)),
              color: Colors.white,
            ),
          ),
          ButtonTheme(
            height: 60,
            child: RaisedButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => ReportsPage()));},
              child: Text('Отчеты', style: TextStyle(fontSize: 15)),
              color: Colors.white,
            ),
          ),
          ButtonTheme(
            height: 60,
            child: RaisedButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => SettingsPage()));},
              child: Text('Настройки', style: TextStyle(fontSize: 15)),
              color: Colors.white,
            ),
          ),
          ButtonTheme(
              height: 60,
              padding: EdgeInsets.all(0),
              child: RaisedButton(
                onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => WalletsPage()));},
                child: Text('Кошельки', style: TextStyle(fontSize: 15)),
                color: Colors.white,
              ))

        ],
      )),
    );
  }
}

class SettingsPage extends StatelessWidget {   //Экран настроек
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Настройки'),),
      
          );
  }
}
class TemplatesPage extends StatelessWidget {   //Экран Шаблоны
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Шаблоны'),),

    );
  }
}
class WalletsPage extends StatelessWidget {   //Экран кошельков
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Кошельки'),),

    );
  }
}
class ReportsPage extends StatelessWidget {   //Экран отчетов
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Отчеты'),),

    );
  }
}