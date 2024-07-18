import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
import 'package:netflix_clone/view/comingSoon_screen/Widgets/arrivalcardWidget.dart';
import 'package:netflix_clone/view/comingSoon_screen/Widgets/comingsooncardWidget.dart';

class Comingsoonscreen extends StatefulWidget {
  const Comingsoonscreen({super.key});

  @override
  State<Comingsoonscreen> createState() => _ComingsoonscreenState();
}

class _ComingsoonscreenState extends State<Comingsoonscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        Icons.notifications_sharp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Notifications',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 175,
                width: double.infinity,
                color: Colors.grey[800],
                child: Column(
                  children: [
                    ArrivalCardWidget(
                        movieImg: ImageConstants.comingsoonImg1,
                        movieName: 'El Chapo'),
                    ArrivalCardWidget(
                        movieImg: ImageConstants.comingsoonImg2,
                        movieName: 'Peaky Blinders')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Comingsooncardwidget(
                  movieImg: ImageConstants.comingsoonImg3,
                  movieName: 'Castle & Castle'),
              Comingsooncardwidget(
                  movieImg: ImageConstants.comingsoonImg4,
                  movieName: 'Tiny Pretty Things'),
              Comingsooncardwidget(
                  movieImg: ImageConstants.comingsoonImg5, movieName: 'Faster')
            ],
          ),
        ),
      ),
    );
  }
}
