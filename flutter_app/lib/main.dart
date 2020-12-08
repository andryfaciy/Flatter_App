import 'package:flutter/material.dart';


void main() {
  runApp(new MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Just_Finance',
      home: new MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int value = 2;

  _addItem() {
    setState(() {
      value = value + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('История'),
      ),
      body: ListView.builder(
          itemCount: this.value,
          itemBuilder: (context, index) => this._buildRow(index)),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: Icon(Icons.add),
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
    ),
    ),
    );

  }
  _buildRow(int index) {
    return Text("Item " + index.toString());}
}

class SettingsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TabsPageState();
}


class _TabsPageState extends State<SettingsPage>{
  bool lights;
  bool isInstructionView;
  bool selected = false;
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
        body: ListView(
          children: <Widget>[
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
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                                child: Text("Расход" , style: TextStyle(fontSize: 16))),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                              child: Text("Коммунальные услуги" , style: TextStyle(fontSize: 12 )),
                            ),
                          ],
                        ),
                      ),

                      Text("-23345", style: TextStyle(fontSize: 18 , color : Colors.red , fontWeight: FontWeight.bold ))

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
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                                child: Text("Доход" , style: TextStyle(fontSize: 16))),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                              child: Text("Зарплата" , style: TextStyle(fontSize: 12 )),
                            ),
                          ],
                        ),
                      ),
                      Text( "+28345", style: TextStyle(fontSize: 18 , color : Colors.green , fontWeight: FontWeight.bold   )),
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
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                                child: Text("Расход" , style: TextStyle(fontSize: 16))),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                              child: Text("Т.О." , style: TextStyle(fontSize: 12 )),
                            ),
                          ],
                        ),
                      ),


                      Text("-32345", style: TextStyle(fontSize: 18 , color : Colors.red , fontWeight: FontWeight.bold ))

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
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                                child: Text("Доход" , style: TextStyle(fontSize: 16))),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                              child: Text("Стипендия" , style: TextStyle(fontSize: 12 )),
                            ),
                          ],
                        ),
                      ),


                      Text("+2500", style: TextStyle(fontSize: 18 , color : Colors.green , fontWeight: FontWeight.bold ))

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
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                                child: Text("Расход" , style: TextStyle(fontSize: 16))),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                              child: Text("Досуг" , style: TextStyle(fontSize: 12 )),
                            ),
                          ],
                        ),
                      ),

                      Text("-650023", style: TextStyle(fontSize: 18 , color : Colors.red , fontWeight: FontWeight.bold ))

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Increment',
          child: Icon(Icons.add),
          onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Newshablone()));},
        )
    );
  }
}


class WalletsPage extends StatelessWidget {
  //Экран кошельков
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Кошельки'),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Column(
          children: [
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
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                        width: 200,
                        child: Text("Кошелек 1" , style: TextStyle(fontSize: 16)),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(100, 5, 0, 0),
                          child: Text("65023 Р", style: TextStyle(fontSize: 18 , color : Colors.blue , fontWeight: FontWeight.bold ))
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
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                        width: 200,
                        child: Text("Кошелек 2" , style: TextStyle(fontSize: 16)),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(100, 5, 0, 0),
                          child: Text("6523 Р", style: TextStyle(fontSize: 18 , color : Colors.blue , fontWeight: FontWeight.bold ))
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
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                        width: 200,
                        child: Text("Кошелек 3" , style: TextStyle(fontSize: 16)),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(100, 5, 0, 0),
                          child: Text("50232 Р", style: TextStyle(fontSize: 18 , color : Colors.blue , fontWeight: FontWeight.bold ))
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ) ,
        floatingActionButton: FloatingActionButton(
          tooltip: 'Increment',
          child: Icon(Icons.add),
          onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Newswallet()));},
        )
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

class Newshablone extends StatelessWidget {   //Экран создания новыго шаблона
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Создание нового шаблона'),),
        body: ListView(

          children: [


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.blue[600],
                  padding: EdgeInsets.fromLTRB(40, 40, 0, 0) ,
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2 ,
                  child :
                  Text("Расход" , style: TextStyle(fontSize: 18 ,  fontWeight: FontWeight.bold )),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2,
                  padding: EdgeInsets.fromLTRB(100, 40, 0, 0) ,
                  child:
                  Text("Доход" , style: TextStyle(fontSize: 18 ,  fontWeight: FontWeight.bold )),
                ),
              ],
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
                      Text("Название" , style: TextStyle(fontSize: 16))
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
                      Text("Сумма" , style: TextStyle(fontSize: 16))
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
                      Text("Комментарий" , style: TextStyle(fontSize: 16))
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
                        child: Text("Кошелек", style: TextStyle(fontSize: 16)),
                      ),
                      Container(
                        height: 14,
                        child: Text("Кошелек 1",style: TextStyle(fontSize: 12 , color: Colors.blue), textAlign: TextAlign.left),
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
                        child: Text("Период списания", style: TextStyle(fontSize: 16)),
                      ),
                      Container(
                        height: 14,
                        child: Text("1 месяц",style: TextStyle(fontSize: 12 , color: Colors.blue), textAlign: TextAlign.left),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Increment',
          child: Icon(Icons.add),
          onPressed: () {},
        )
    );
  }
}

class Newswallet extends StatelessWidget {   //Экран создания новыго шаблона
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Создание нового кошелька'),),
        body: ListView(

          children: [
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
                      Text("Название" , style: TextStyle(fontSize: 16))
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
                      Text("Баланс" , style: TextStyle(fontSize: 16))
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
                      Text("Иконка" , style: TextStyle(fontSize: 16))
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
                      Text("Цвет" , style: TextStyle(fontSize: 16))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Increment',
          child: Icon(Icons.add),
          onPressed: () {},
        )
    );
  }
}