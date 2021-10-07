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
      body:
      SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                child: Text("Button One"),
                  onPressed: (){

              }),
              Container(
                  height: 200,
                  width: 150,
                  child: Image.network(
                      "https://images.pexels.com/photos/1661179/pexels-photo-1661179.jpeg"
                  )),
              Container(
                  height: 200,
                  width: 150,
                  child:
                  Image.asset("assets/images/image1.jpg"),
              ),
            ],
          ),
        ),
      )
    );
  }
}


