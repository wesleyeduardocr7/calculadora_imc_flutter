import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Calculadora IMC", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(Icons.person_outline, size: 120.0, color: Colors.green),
          TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.green, fontSize: 25.0),
            textAlign: TextAlign.center,
            decoration: InputDecoration(labelText: "Peso: (Kg)"),
            cursorColor: Colors.purple,
          ),
          TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.green, fontSize: 25.0),
            textAlign: TextAlign.center,
            decoration: InputDecoration(labelText: "Altura: (cm)"),
            cursorColor: Colors.purple,
          ),

          RaisedButton(
            child: Text("Calcular",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            onPressed: (){},
          ),

        ],
      ),
    );
  }
}
