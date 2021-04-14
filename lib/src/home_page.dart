import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final estiloText = new TextStyle(fontSize: 40);
  int _contador = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      title: 'Material-Scalfold',
      home: Scaffold(
        appBar: AppBar(title: Text('Hola grupo del 15701'), centerTitle: true),
        body: Center(
            //child: Text('Numero de Clicks',style: new TextStyle(fontSize: 30),),
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contador de Clicks',
              style: new TextStyle(fontSize: 30),
            ),
            Text(
              '$_contador',
              style: estiloText,
            ),
          ],
        )),
        floatingActionButton: _iconos(),
      ),
    );
  }

  Widget _iconos() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 10),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _suma,
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _resta,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero_outlined),
          onPressed: _reset,
        )
      ],
    );
  }

  void _suma() {
    setState(() {
      _contador++;
    });
  }

  void _resta() {
    setState(() {
      _contador--;
    });
  }

  void _reset() {
    setState(() {
      _contador=0;
    });
  }
}
