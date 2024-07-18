import 'package:flutter/material.dart';
import 'package:netflix_clone/sections/buttonRowSection.dart';
import 'package:netflix_clone/sections/movieCardSection.dart';
import 'package:netflix_clone/sections/previewsRowSection.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:netflix_clone/view/myListScreen/myListScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 450.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 10),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                  aspectRatio: 3 / 2,
                  viewportFraction: 1.0,
                ),
                items: [
                  ImageConstants.HomeScreenImg1,
                  ImageConstants.HomeScreenImg2,
                  ImageConstants.HomeScreenImg3,
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(i),
                          fit: BoxFit.cover,
                        )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(ImageConstants.Logo_Icon),
                                InkWell(
                                  onTap: () {},
                                  child: const Text(
                                    'TV Shows',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const Text(
                                    'Movies',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Mylistscreen(),
                                        ));
                                  },
                                  child: const Text(
                                    'My List',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 15,
                                    width: 15,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstants.HomeScreenIcon2),
                                            fit: BoxFit.fill))),
                                const Text(
                                  '#2 in Nigeria Today',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              // Container(
              //   height: 450,
              //   width: double.infinity,
              //   decoration: const BoxDecoration(
              //       image: DecorationImage(
              //           image: AssetImage(ImageConstants.HomeScreenImg1),
              //           fit: BoxFit.fill)),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Image.asset(ImageConstants.Logo_Icon),
              //           InkWell(
              //             onTap: () {},
              //             child: const Text(
              //               'TV Shows',
              //               style: TextStyle(
              //                   color: Colors.white, fontSize: 20),
              //             ),
              //           ),
              //           InkWell(
              //             onTap: () {},
              //             child: const Text(
              //               'Movies',
              //               style: TextStyle(
              //                   color: Colors.white, fontSize: 20),
              //             ),
              //           ),
              //           InkWell(
              //             onTap: () {},
              //             child: const Text(
              //               'My List',
              //               style: TextStyle(
              //                   color: Colors.white, fontSize: 20),
              //             ),
              //           ),
              //           const SizedBox(
              //             width: 5,
              //           ),
              //         ],
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Container(
              //               height: 15,
              //               width: 15,
              //               decoration: const BoxDecoration(
              //                   image: DecorationImage(
              //                       image: AssetImage(
              //                           ImageConstants.HomeScreenIcon2),
              //                       fit: BoxFit.fill))),
              //           const Text(
              //             '#2 in Nigeria Today',
              //             style:
              //                 TextStyle(color: Colors.white, fontSize: 17),
              //           )
              //         ],
              //       )
              //     ],
              //   ),
              // ),

              const SizedBox(
                height: 10,
              ),
              const ButtonRowSection(),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Previews',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const PreviewsRowSection(),
                  SizedBox(
                    height: 30,
                  ),
                  MoviesCardSection(
                    Title: "Continue Watching For Emenalo",
                    infoRow: true,
                    height1: 215.0,
                    height2: 178.0,
                    width1: 120.0,
                    width2: 120.0,
                    RectangleImage1: ImageConstants.rectangleMovieImg1,
                    RectangleImage2: ImageConstants.rectangleMovieImg2,
                    RectangleImage3: ImageConstants.rectangleMovieImg3,
                    RectangleImage4: ImageConstants.rectangleMovieImg4,
                    RectangleImage5: ImageConstants.rectangleMovieImg5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MoviesCardSection(
                    Title: 'Popular On Netflix',
                    height1: 205.0,
                    height2: 205.0,
                    width1: 120.0,
                    width2: 120.0,
                    RectangleImage1: ImageConstants.rectangleMovieImg6,
                    RectangleImage2: ImageConstants.rectangleMovieImg7,
                    RectangleImage3: ImageConstants.rectangleMovieImg8,
                    RectangleImage4: ImageConstants.rectangleMovieImg9,
                    RectangleImage5: ImageConstants.rectangleMovieImg10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MoviesCardSection(
                    Title: 'Trending Now',
                    height1: 205.0,
                    height2: 205.0,
                    width1: 120.0,
                    width2: 120.0,
                    RectangleImage1: ImageConstants.rectangleMovieImg11,
                    RectangleImage2: ImageConstants.rectangleMovieImg12,
                    RectangleImage3: ImageConstants.rectangleMovieImg13,
                    RectangleImage4: ImageConstants.rectangleMovieImg14,
                    RectangleImage5: ImageConstants.rectangleMovieImg1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MoviesCardSection(
                    Title: 'Top 10 in Nigeria Today',
                    height1: 205.0,
                    height2: 205.0,
                    width1: 120.0,
                    width2: 120.0,
                    RectangleImage1: ImageConstants.rectangleMovieImg4,
                    RectangleImage2: ImageConstants.rectangleMovieImg5,
                    RectangleImage3: ImageConstants.rectangleMovieImg9,
                    RectangleImage4: ImageConstants.rectangleMovieImg10,
                    RectangleImage5: ImageConstants.rectangleMovieImg1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MoviesCardSection(
                    Title: 'Netflix Originals',
                    height1: 300.0,
                    height2: 300.0,
                    width1: 180.0,
                    width2: 180.0,
                    RectangleImage1: ImageConstants.rectangleMovieImg10,
                    RectangleImage2: ImageConstants.rectangleMovieImg14,
                    RectangleImage3: ImageConstants.rectangleMovieImg2,
                    RectangleImage4: ImageConstants.rectangleMovieImg10,
                    RectangleImage5: ImageConstants.rectangleMovieImg1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MoviesCardSection(
                    Title: "Continue Watching For Emenalo",
                    infoRow: true,
                    height1: 215.0,
                    height2: 178.0,
                    width1: 120.0,
                    width2: 120.0,
                    RectangleImage1: ImageConstants.rectangleMovieImg1,
                    RectangleImage2: ImageConstants.rectangleMovieImg2,
                    RectangleImage3: ImageConstants.rectangleMovieImg3,
                    RectangleImage4: ImageConstants.rectangleMovieImg4,
                    RectangleImage5: ImageConstants.rectangleMovieImg5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MoviesCardSection(
                    Title: 'Popular On Netflix',
                    height1: 205.0,
                    height2: 205.0,
                    width1: 120.0,
                    width2: 120.0,
                    RectangleImage1: ImageConstants.rectangleMovieImg6,
                    RectangleImage2: ImageConstants.rectangleMovieImg7,
                    RectangleImage3: ImageConstants.rectangleMovieImg8,
                    RectangleImage4: ImageConstants.rectangleMovieImg9,
                    RectangleImage5: ImageConstants.rectangleMovieImg10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MoviesCardSection(
                    Title: 'Trending Now',
                    height1: 205.0,
                    height2: 205.0,
                    width1: 120.0,
                    width2: 120.0,
                    RectangleImage1: ImageConstants.rectangleMovieImg11,
                    RectangleImage2: ImageConstants.rectangleMovieImg12,
                    RectangleImage3: ImageConstants.rectangleMovieImg13,
                    RectangleImage4: ImageConstants.rectangleMovieImg14,
                    RectangleImage5: ImageConstants.rectangleMovieImg1,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
