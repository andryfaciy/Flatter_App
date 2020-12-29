import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../models/doing.dart';
import '../../client/hive_names.dart';

class AddDoing extends StatefulWidget {
  final formKey = GlobalKey<FormState>();

  @override
  _AddDoingState createState() => _AddDoingState();
}

class _AddDoingState extends State<AddDoing> {
  String Nazvanie;
  String Summa1;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(keyboardType: TextInputType.number,
                    autofocus: true,
                    initialValue: '',
                    decoration: const InputDecoration(
                      labelText: 'Сумма',
                    ),
                    onChanged: (value) {
                      setState(() {
                        Summa1 = value;
                      });
                    },
                    validator: (val) {
                      return val.trim().isEmpty
                          ? 'Поле сумма должно быть заполнено'
                          : null;
                    },
                  ),
                  TextFormField(keyboardType: TextInputType.number,
                    initialValue: '',
                    decoration: const InputDecoration(
                      labelText: 'Дата',
                    ),
                    onChanged: (value) {
                      setState(() {
                        Nazvanie = value == null ? '' : value;
                      });
                    },
                    validator: (val) {
                      return val.trim().isEmpty
                          ? 'Поле дата должно быть заполнено'
                          : null;
                    },
                  ),
                  OutlineButton(
                    child: Text('Добавить'),
                    onPressed: _validateAndSave,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      _onFormSubmit();
    } else {
      print('Недействительно');
    }
  }

  void _onFormSubmit() {
    Box<Doing> contactsBox = Hive.box<Doing>(Hoxes.doing);
    contactsBox.add(Doing(Summa1: Summa1, Nazvanie: Nazvanie));
    Navigator.of(context).pop();
  }
}