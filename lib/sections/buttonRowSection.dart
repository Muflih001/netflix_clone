import 'package:flutter/material.dart';

class ButtonRowSection extends StatelessWidget {
  const ButtonRowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      InkWell(
        onTap: () {
          print('mylist button clicked');
        },
        child: Container(
          child: const Column(
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text(
                'MyList',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
      const SizedBox(
        width: 30,
      ),
      InkWell(
        onTap: () {
          print('mylist button clicked');
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(5)),
          width: 100,
          height: 40,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.play_arrow,
                color: Colors.black,
                size: 35,
              ),
              Text(
                'Play',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 17),
              ),
              SizedBox(
                width: 2,
              )
            ],
          ),
        ),
      ),
      const SizedBox(
        width: 30,
      ),
      InkWell(
        onTap: () {
          print('mylist button clicked');
        },
        child: Container(
          child: const Column(
            children: [
              Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              Text(
                'info',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}