import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Review(
          "assets/img/people.jpg",
          "David",
          "1 review . 5 photos",
          "Es un gran lugar para visitar",
          4.5
        ),
        Review(
            "assets/img/people.jpg",
            "Fernando",
            "2 review . 7 photos",
            "Excelente para las vacaciones",
            4.5
        )
      ],
    );
  }

}