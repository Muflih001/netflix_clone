import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
import 'package:netflix_clone/view/home_screen/widgets/previewAvatar.dart';

class PreviewsRowSection extends StatelessWidget {
  const PreviewsRowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PreviewAvatar(
            movieImg: ImageConstants.PreviewImg1,
          ),
          PreviewAvatar(
            movieImg: ImageConstants.PreviewImg2,
          ),
          PreviewAvatar(
            movieImg: ImageConstants.PreviewImg3,
          ),
          PreviewAvatar(
            movieImg: ImageConstants.PreviewImg4,
          ),
          PreviewAvatar(
            movieImg: ImageConstants.PreviewImg5,
          ),
        ],
      ),
    );
  }
}
