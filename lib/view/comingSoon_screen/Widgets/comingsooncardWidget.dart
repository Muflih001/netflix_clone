import 'package:flutter/material.dart';

class Comingsooncardwidget extends StatelessWidget {
  const Comingsooncardwidget(
      {super.key, required this.movieImg, required this.movieName});
  final String movieImg;
  final String movieName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 220,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(movieImg), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 40,
                ),
                Text(
                  'Remind Me',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Column(
              children: [
                Icon(
                  Icons.share,
                  color: Colors.white,
                  size: 40,
                ),
                Text(
                  'Share',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Season 1 Coming Deember14',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          movieName,
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,,id ut ipsum aliquam  enim non posuere pulvinar diam.',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Steamy . ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Text(
              'Soapy . ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Text(
              'Slow Burn . ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Text(
              'Suspenseful . ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Text(
              'Teen . ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Text(
              'Mystery',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(
          height: 10,
        ),

     
          ],
        )
      ],
    );
  }
}
