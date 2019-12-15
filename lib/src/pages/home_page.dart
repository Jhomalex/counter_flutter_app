import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final _contadorStyle = new TextStyle(fontSize: 36);
  final _textoStyle = new TextStyle(fontSize: 16);
  final counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Título'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('$counter', style: _contadorStyle),
              Text('clicks', style: _textoStyle)
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: () {},
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {},
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ],
    );
  }
}
