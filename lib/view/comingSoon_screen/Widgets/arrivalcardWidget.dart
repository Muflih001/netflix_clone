import 'package:flutter/material.dart';

class ArrivalCardWidget extends StatelessWidget {
  const ArrivalCardWidget({
    super.key,
    required this.movieImg,
    required this.movieName,
  });
  final String movieImg;
  final String movieName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 4),
      child: Row(
        children: [
          Container(
            height: 73,
            width: 140,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(movieImg), fit: BoxFit.fill)),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'New Arrival',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                movieName,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'Nov 6',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
