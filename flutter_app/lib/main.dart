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
      body: new Container( alignment: FractionalOffset(0.95, 0.02),

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
      appBar: AppBar(title: Text('Шаблоны'),),

    );
  }
}
class WalletsPage extends StatelessWidget {   //Экран кошельков
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Кошельки'),),
      body: Column(
        children :[
          ButtonTheme(
              height: 60, minWidth: 360,

              child: RaisedButton(
                child: Text('Кошелек 0', style: TextStyle(fontSize: 20)),
                color: Colors.white,
                onPressed: () {},
              )
          ),
          ButtonTheme(
              height: 60, minWidth: 360,
              child: RaisedButton(
                child: new Text("Кошелек 1" , style: TextStyle(fontSize: 15)),
                color: Colors.white,
                onPressed: () {},
              )
          ),
        ],
      ),
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
