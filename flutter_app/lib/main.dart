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

class SettingsPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _TabsPageState();
}

class _TabsPageState extends State<SettingsPage>{
  bool isInstructionView;
  @override
  void initState() {
    isInstructionView = Global.shared.isInstructionView;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Настройки"),
      ),
      body: Column(
        children:[
        new Container( alignment: FractionalOffset(0.95, 0.02),

        child:  SwitchListTile(
          title: Text("Тёмная тема"),
          value: isInstructionView,
          onChanged: (bool isOn) {
            print(isOn);
            setState(() {
              isInstructionView = isOn;
              Global.shared.isInstructionView = isOn;
              isOn =!isOn;
              print(isInstructionView);
            });
          },
          activeColor: Colors.green,
          inactiveTrackColor: Colors.red,
          inactiveThumbColor: Colors.red,

        ),
      ),
          new Container( alignment: FractionalOffset(0.95, 0.02),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 0.05,
                )
            ),

            child:  SwitchListTile(
              title: Text("Уведомления"),
              value: isInstructionView,
              onChanged: (bool isOn) {
                print(isOn);
                setState(() {
                  isInstructionView = isOn;
                  Global.shared.isInstructionView = isOn;
                  isOn =!isOn;
                  print(isInstructionView);
                });
              },
              activeColor: Colors.green,
              inactiveTrackColor: Colors.red,
              inactiveThumbColor: Colors.red,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 0.05,
                )
            ),
            child: ButtonTheme(
              height: 60,
              minWidth: 400,
              child: RaisedButton(
                onPressed: (){} ,
                child: Text('Язык', style: TextStyle(fontSize: 16)),
                color: Colors.grey[50],
              ),
            ),
          ),
          new Container(
            height: 60,
            padding: EdgeInsets.all(20),
            child: new Text("Выбранная валюта" , style: TextStyle(fontSize: 16)),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.05,
              )
            ),
          ),
        ]
      ),

    );
  }
}

class Global{
  static final shared =Global();
  bool isInstructionView = false;
}
class TemplatesPage extends StatelessWidget {   //Экран Шаблоны
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Шаблоны'),
      ),

    );
  }
}
class WalletsPage extends StatelessWidget {   //Экран кошельков
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Кошельки')),
        body: BodyLayout(),
      ),
    );
  }
}
class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}
Widget _myListView(BuildContext context) {
  return ListView(
    children: ListTile.divideTiles(
      context: context,
      tiles: [
        ListTile(
          title: Text('Кошелек 1'),
        ),
        ListTile(
          title: Text('Кошелек 2'),
        ),
        ListTile(
          title: Text('Кошелек 3'),
        ),
      ],
    ).toList(),
  );
}


//Болгов лох
class ReportsPage extends StatelessWidget {   //Экран отчетов
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Отчеты'),),

    );
  }
}
