import 'package:flutter/material.dart';

class PlayCardWidget extends StatelessWidget {
  const PlayCardWidget(
      {super.key, required this.movieImg, required this.movieName});
  final String movieImg;
  final String movieName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: double.infinity,
        height: 100,
        color: Colors.grey[800],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: 180,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(movieImg), fit: BoxFit.fill)),
            ),
            SizedBox(
              width: 5,
            ),
            SizedBox(
              width: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    movieName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(
                    Icons.play_circle_outline,
                    color: Colors.white,
                    size: 38,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 2,
            )
          ],
        ),
      ),
    );
  }
}
