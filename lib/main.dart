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

      body: SingleChildScrollView(

        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),

        child: Column(
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

            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
              child:   Container(
                height: 50.0,
                child: RaisedButton(
                  color: Colors.green,
                  child: Text("Calcular",
                      style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)),
                  onPressed: (){},
                ),
              ),
            ),

            Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Info",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.green, fontSize: 25.0))
            ),
          ],
        ),
      ) ,
    );
  }
}
