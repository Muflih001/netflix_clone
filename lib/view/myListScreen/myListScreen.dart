import 'package:flutter/material.dart';
import 'package:netflix_clone/sections/movieCardSection.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';

class Mylistscreen extends StatelessWidget {
  const Mylistscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(ImageConstants.Logo_Icon),
                  Text('MyList',
                      style: TextStyle(color: Colors.white, fontSize: 28)),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  )
                ],
              ),
              MoviesCardSection(
                  height1: 205.0,
                  height2: 205.0,
                  width1: 120.0,
                  width2: 120.0,
                  Title: '',
                  RectangleImage1: ImageConstants.rectangleMovieImg1,
                  RectangleImage2: ImageConstants.rectangleMovieImg2,
                  RectangleImage3: ImageConstants.rectangleMovieImg3,
                  RectangleImage4: ImageConstants.rectangleMovieImg4,
                  RectangleImage5: ImageConstants.rectangleMovieImg5),
              MoviesCardSection(
                  height1: 205.0,
                  height2: 205.0,
                  width1: 120.0,
                  width2: 120.0,
                  Title: '',
                  RectangleImage1: ImageConstants.rectangleMovieImg4,
                  RectangleImage2: ImageConstants.rectangleMovieImg5,
                  RectangleImage3: ImageConstants.rectangleMovieImg6,
                  RectangleImage4: ImageConstants.rectangleMovieImg7,
                  RectangleImage5: ImageConstants.rectangleMovieImg8),
              MoviesCardSection(
                  height1: 205.0,
                  height2: 205.0,
                  width1: 120.0,
                  width2: 120.0,
                  Title: '',
                  RectangleImage1: ImageConstants.rectangleMovieImg7,
                  RectangleImage2: ImageConstants.rectangleMovieImg8,
                  RectangleImage3: ImageConstants.rectangleMovieImg9,
                  RectangleImage4: ImageConstants.rectangleMovieImg10,
                  RectangleImage5: ImageConstants.rectangleMovieImg11),
              MoviesCardSection(
                  height1: 200.0,
                  height2: 200.0,
                  width1: 110.0,
                  width2: 110.0,
                  Title: '',
                  RectangleImage1: ImageConstants.rectangleMovieImg10,
                  RectangleImage2: ImageConstants.rectangleMovieImg11,
                  RectangleImage3: ImageConstants.rectangleMovieImg12,
                  RectangleImage4: ImageConstants.rectangleMovieImg13,
                  RectangleImage5: ImageConstants.rectangleMovieImg14),
              MoviesCardSection(
                  height1: 205.0,
                  height2: 205.0,
                  width1: 120.0,
                  width2: 120.0,
                  Title: '',
                  RectangleImage1: ImageConstants.rectangleMovieImg1,
                  RectangleImage2: ImageConstants.rectangleMovieImg2,
                  RectangleImage3: ImageConstants.rectangleMovieImg3,
                  RectangleImage4: ImageConstants.rectangleMovieImg4,
                  RectangleImage5: ImageConstants.rectangleMovieImg5)
            ],
          ),
        ),
      ),
    );
  }
}
