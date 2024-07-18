import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
import 'package:netflix_clone/view/navBarScreen.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Image.asset(
            ImageConstants.Logo_png,
            height: 40,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Center(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 75),
            shrinkWrap: true,
            itemCount: DummyDb.usersList.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 130,
            ),
            itemBuilder: (context, index) {
              if (index < DummyDb.usersList.length) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NavBarScreen()));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                          DummyDb.usersList[index]['imagePath'].toString()),
                      Text(
                        DummyDb.usersList[index]['name'].toString(),
                        style: TextStyle(color: Colors.white, fontSize: 13.25),
                      ),
                    ],
                  ),
                );
              } else {
                return InkWell(
                  onTap: () {
                    DummyDb.usersList.add(
                      {"imagePath": ImageConstants.user1, "name": "Muflih"},
                    );
                    setState(() {});
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.green,
                        content: Text("Profile adde successfully")));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        ImageConstants.ADD_PNG,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Add Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.25,
                        ),
                      )
                    ],
                  ),
                );
              }
            },
          ),
        ));
  }
}
