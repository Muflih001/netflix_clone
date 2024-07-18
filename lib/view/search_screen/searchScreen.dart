import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
import 'package:netflix_clone/view/search_screen/widgets/playCardWidget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _searchController,
                style: TextStyle(color: Colors.grey),
                cursorColor: Colors.grey,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 12),
                    prefixIcon: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: Colors.grey,
                    ),
                    hintText: 'Search for a show,movie,genre,e.t.c',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[800]),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Top Searches',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              PlayCardWidget(
                  movieImg: ImageConstants.searchscreenimg1,
                  movieName: 'Oloture'),
              PlayCardWidget(
                  movieImg: ImageConstants.searchscreenimg2,
                  movieName: 'Breaking Bad'),
              PlayCardWidget(
                  movieImg: ImageConstants.searchscreenimg3,
                  movieName: 'Ozark'),
              PlayCardWidget(
                  movieImg: ImageConstants.searchscreenimg4,
                  movieName: 'The Governor'),
              PlayCardWidget(
                  movieImg: ImageConstants.searchscreenimg5,
                  movieName: 'Faster'),
              PlayCardWidget(
                  movieImg: ImageConstants.searchscreenimg6,
                  movieName: 'Castle & Castle')
            ],
          ),
        ),
      ),
    );
  }
}
