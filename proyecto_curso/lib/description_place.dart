import 'package:flutter/material.dart';
import 'starsRating.dart';
import 'review_list.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  double stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace,this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context){

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        StarsRating(stars)
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );

    return
      Container(
        margin: EdgeInsets.only(
          top: 320.0,
        ),
        child: Column(
        children: <Widget>[
          title_stars,
          description,
          ReviewList()
        ],
      )
      )
    ;
  }
}