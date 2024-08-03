import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
import 'package:netflix_clone/view/navBarScreen.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 120,
                  width: 335,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: DummyDb.usersList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NavBarScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              DummyDb.usersList[index]
                                                  ['imagePath']!))),
                                ),
                                Text(
                                  DummyDb.usersList[index]['name'].toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13.25),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 75,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(Icons.add, color: Colors.white, size: 40),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            InkWell(
                onTap: () {
                  print("manage profile button clicked");
                },
                child: Container(
                    child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Manage Profiles',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ))),
            Container(
              color: Colors.grey[900],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.message_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Tell friends about Netflix.',
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        )
                      ],
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed\ndo eiusmod tempor incididunt labore et dolore magna aliqua.",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        print('terms and condition button clicked');
                      },
                      child: const Text(
                        "Terms & Conditions.",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      height: 0, // height of the divider
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 280,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white),
                          child: const Center(
                            child: Text(
                              'CopyLink',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(ImageConstants.whatsappLogo),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 50, 
                          child: VerticalDivider(
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image:
                                      AssetImage(ImageConstants.facebookLogo),
                                  fit: BoxFit.fitHeight)),
                        ),
                        SizedBox(
                          height: 50, // height of the divider
                          child: VerticalDivider(
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstants.gmailLogo),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 50, // height of the divider
                          child: VerticalDivider(
                            color: Colors.grey,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print('WhatsApp button clicked');
                          },
                          child: Column(
                            children: [
                              Icon(Icons.more_horiz_outlined,
                                  size: 40, color: Colors.white),
                              Text('More',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.check_sharp,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    'MyList',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 0, // height of the divider
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20),
                      child: Text(
                        'App Settings',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20),
                      child: Text(
                        'Accounts',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20),
                      child: Text(
                        'Help',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20),
                      child: Text(
                        'Sign Out',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
