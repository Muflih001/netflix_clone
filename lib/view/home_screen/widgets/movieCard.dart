import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String RectangleImage;
  final bool infoRow;
  final Widget? infoRowWidget;
  final dynamic height1;
  final dynamic height2;
  final dynamic width1;
  final dynamic width2;
  MovieCard(
      {required this.RectangleImage,
      this.infoRow = false,
      this.infoRowWidget,
      this.height1,
      this.height2,
      this.width1,
      this.width2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        color: const Color.fromARGB(255, 22, 22, 22),
        height: height1, //215
        width: width1, //120
        child: Column(
          children: [
            InkWell(
              onTap: () {
                print('continue watching rectangle button clicked');
              },
              child: Container(
                height: height2, //178
                width: width2, //120
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(0),
                    image: DecorationImage(
                        image: AssetImage(RectangleImage), fit: BoxFit.fill)),
              ),
            ),
            if (infoRow) infoRowWidget ?? InfoRow(),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 3, bottom: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Icon(Icons.info_outline, color: Colors.white, size: 30),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
