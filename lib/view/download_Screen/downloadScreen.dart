import 'package:flutter/material.dart';

class Downloadscreen extends StatelessWidget {
  const Downloadscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Smart Downloads',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                'Introducing Downloads For You',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa id ut ipsum aliquam  enim non posuere pulvinar diam.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 35,
              )
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[700],
            radius: 120,
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                'SETUP',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  'Find Something to Download',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
