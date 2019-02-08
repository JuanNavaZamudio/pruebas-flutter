import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
          // counter didn't reset back to zero; the application is not restarted.
          primarySwatch: Colors.green,
        ),
        home: new Scaffold(
            appBar: new AppBar(
              leading: new Icon(Icons.arrow_back),
              title: new Text("Segundo reto"),
            ),
            body: new Container(
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: AssetImage("media/images/gato_y_lagartija.jpg"),
                        fit: BoxFit.cover)),
                child: new FractionallySizedBox(
                    widthFactor: 1.0,
                    heightFactor: 0.08,
                    child: new Container(
                      alignment: Alignment.center,
                      color: Colors.black38,
                      child: new Text(
                        "hola",
                        style:
                            new TextStyle(color: Colors.white, fontSize: 30.0),
                      ),
                    ))))); //new MyHomePage(title: 'Flutter Demo Home Page'),
  }
}
