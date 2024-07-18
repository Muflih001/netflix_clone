import 'package:flutter/material.dart';

class PreviewAvatar extends StatelessWidget {
  final String movieImg;
  PreviewAvatar({
    required this.movieImg,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: InkWell(
        onTap: () {
          print('preview Avatar button clicked');
        },
        child: CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(movieImg),
        ),
      ),
    );
  }
}
