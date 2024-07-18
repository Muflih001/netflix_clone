import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone/view/home_screen/widgets/movieCard.dart';

class MoviesCardSection extends StatelessWidget {
  final String Title;
  final bool infoRow;
  final String RectangleImage1;
  final String RectangleImage2;
  final String RectangleImage3;
  final String RectangleImage4;
  final String RectangleImage5;
  final dynamic height1;
  final dynamic height2;
  final dynamic width1;
  final dynamic width2;
  MoviesCardSection(
      {required this.Title,
      required this.RectangleImage1,
      required this.RectangleImage2,
      required this.RectangleImage3,
      required this.RectangleImage4,
      required this.RectangleImage5,
      this.infoRow = false,
      this.height1,
      this.height2,
      this.width1,
      this.width2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            Title,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              MovieCard(
                  RectangleImage: RectangleImage1,
                  infoRow: infoRow,
                  height1: height1,
                  width1: width1,
                  height2: height2,
                  width2: width2),
              MovieCard(
                  RectangleImage: RectangleImage2,
                  infoRow: infoRow,
                  height1: height1,
                  width1: width1,
                  height2: height2,
                  width2: width2),
              MovieCard(
                  RectangleImage: RectangleImage3,
                  infoRow: infoRow,
                  height1: height1,
                  width1: width1,
                  height2: height2,
                  width2: width2),
              MovieCard(
                  RectangleImage: RectangleImage4,
                  infoRow: infoRow,
                  height1: height1,
                  width1: width1,
                  height2: height2,
                  width2: width2),
              MovieCard(
                  RectangleImage: RectangleImage5,
                  infoRow: infoRow,
                  height1: height1,
                  width1: width1,
                  height2: height2,
                  width2: width2),
            ],
          ),
        ),
      ],
    );
  }
}
