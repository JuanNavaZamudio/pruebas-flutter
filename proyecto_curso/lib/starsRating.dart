import 'package:flutter/material.dart';

class StarsRating extends StatelessWidget {

  int totStars = 5;
  double givedStars = 0.0;
  double scale = 1.0;

  StarsRating(this.givedStars);
  StarsRating.small(totStars) {
    this.givedStars = totStars;
    this.scale = 0.6;
  }

  final star = Container(
    margin: EdgeInsets.only(right: 3.0),
    child: Icon(
      Icons.star,
      color: Color(0xFFF2C611),
    ),
  );

  final starHalf = Container(
    margin: EdgeInsets.only(right: 3.0),
    child: Icon(
      Icons.star_half,
      color: Color(0xFFF2C611),
    ),
  );

  final starBorder = Container(
    margin: EdgeInsets.only(right: 3.0),
    child: Icon(
      Icons.star_border,
      color: Color(0xFFF2C611),
    ),
  );

  List<Widget> fillStars() {
    List<Widget> estrellas = new List<Widget>();
    int emptyStars = 0;
    int filledStars = givedStars.floor();

    for (int i = 0; i < filledStars; i++) estrellas.add(star);

    if (givedStars % 1 != 0) estrellas.add(starHalf);

    if (estrellas.length < totStars) emptyStars = totStars - estrellas.length;

    for (int i = 0; i < emptyStars; i++) estrellas.add(starBorder);

    return estrellas;
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(scale: scale, child: Row(children: fillStars()));
  }
}
