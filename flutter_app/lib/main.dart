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
  bool lights;
  bool isInstructionView;
  @override
  void initState() {
    isInstructionView = Global.shared.isInstructionView;
    lights = Global.shared.lights;
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
          title: Text("Тёмная тема", style: TextStyle(fontSize: 16)),
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
              title: Text("Уведомления", style: TextStyle(fontSize: 16)),
              value: lights,
              onChanged: (bool isOn) {
                print(isOn);
                setState(() {
                  lights = isOn;
                  Global.shared.lights = isOn;
                  isOn =!isOn;
                  print(lights);
                });
              },
              activeColor: Colors.green,
              inactiveTrackColor: Colors.red,
              inactiveThumbColor: Colors.red,
            ),
          ),
          GestureDetector(
            onTap: () {
              print("Tapped a Container");
            },
            child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 0.05,
                )
            ),
           child: Padding(
             padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(
                   height: 35,
                   child: Text("Язык", style: TextStyle(fontSize: 16)),
                 ),
                 Container(
                   height: 14,
                   child: Text("Русский",style: TextStyle(fontSize: 12 , color: Colors.blue), textAlign: TextAlign.left),
                 ),
               ],
             ),
           ),
          ),
          ),
          GestureDetector(
            onTap: () {
              print("Tapped a Container");
            },
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.05,
                  )
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                             Container(
                                   height: 35,
                                   child: Text("Выбранная валюта", style: TextStyle(fontSize: 16)),
                              ),
                             Container(
                                   height: 14,
                                   child: Text("Российский рубль",style: TextStyle(fontSize: 12 , color: Colors.blue), textAlign: TextAlign.left),
                             ),
                             ],
                ),
                 ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("Tapped a Container");
            },
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.05,
                  )
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 0 , 0),
                child: Column(
                  children: [
                    Text("Резервная копия" , style: TextStyle(fontSize: 16))
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("Tapped a Container");
            },
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.05,
                  )
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 0 , 0),
                child: Column(
                  children: [
                    Text("Обратная связь" , style: TextStyle(fontSize: 16))
                  ],
                ),
              ),
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
  bool lights = false;
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

class ReportsPage extends StatelessWidget {   //Экран отчетов
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Отчеты'),),
    );
  }
}
