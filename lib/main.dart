import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
String btnText="button 1";

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title:
        Text("My App"),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text(btnText),
            color: Colors.lightGreen,
              onPressed: (){
              setState(() {
                btnText="Button Pressed";
              });
              }
          ),
          RaisedButton(
              child: Text(btnText),
              color: Colors.lightGreen,
              onPressed: (){
                setState(() {
                  btnText="Button Pressed";
                });
              }
          )
        ],
      ),
    );
  }
}


