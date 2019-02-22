import 'package:flutter/material.dart';

class StarsRating extends StatelessWidget{

  double totEstrellas = 0.0;

  StarsRating(this.totEstrellas);

  final star = Container(
    margin: EdgeInsets.only(
        right: 3.0
    ),
    child: Icon(
      Icons.star,
      color: Color(0xFFF2C611),
    ),
  );

  final star_half = Container(
    margin: EdgeInsets.only(
        right: 3.0
    ),
    child: Icon(
      Icons.star_half,
      color: Color(0xFFF2C611),
    ),
  );

  final star_border=Container(
    margin: EdgeInsets.only(
        right: 3.0
    ),
    child: Icon(
      Icons.star_border,
      color: Color(0xFFF2C611),
    ),
  );

  List<Widget> fillStars(){
    List<Widget> estrellas = new List<Widget>();
    int emptyStars=0;
    for(int i =1; i<totEstrellas;i++)
      estrellas.add(star);

    if(totEstrellas%2 != 0)
      estrellas.add(star_half);

    if(estrellas.length < 5)
      emptyStars = 5 - estrellas.length;

    for(int i =0; i<emptyStars;i++)
      estrellas.add(star_border);

    return estrellas;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: fillStars(),
    );
  }
}