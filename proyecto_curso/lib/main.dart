import 'package:flutter/material.dart';
import 'package:proyecto_curso/gradient_back.dart';
import 'description_place.dart';

void main() => runApp(new MyApp());


String text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam semper massa lacus. Donec enim augue, vehicula nec sem nec, pulvinar sagittis risus. Suspendisse pharetra risus nec dui maximus pretium a nec libero. Donec dapibus porttitor volutpat. Etiam at metus quis elit accumsan scelerisque.";

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace("Paris",5.0,text),
              ],
            ),
            GradientBack()
          ],

        )

        /*ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            DescriptionPlace("New York",3.5,text) ,
          ],
        )
        */
      )
    );
  }
}
