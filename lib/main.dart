import 'package:flutter/material.dart';
import 'package:pasar_informacion_a_otra_pagina/pages/PageStatefull.dart';
import 'package:pasar_informacion_a_otra_pagina/pages/pageStateless.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _TextoController = TextEditingController(text: "");
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                  controller: _TextoController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: "Ingresa informacion"))),
          RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PageStateless(_TextoController.text)));
              },
              child: Text("Enviar a stateless")),
          RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Pagestatefull(_TextoController.text)));
              },
              child: Text("Enviar a statefull")),
        ],
      ),
    );
  }
}
