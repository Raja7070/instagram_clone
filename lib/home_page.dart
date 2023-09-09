import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> profileImage = [
    "assets/image/profile1.jpg",
    "assets/image/profile2.jpg",
    "assets/image/profile3.jpg",
    "assets/image/profile4.jpg",
    "assets/image/profile5.jpg",
    "assets/image/profile6.jpg",
    "assets/image/profile7.jpg",
    "assets/image/profile8.jpg",
  ];
  List<String> posts = [
    "assets/image/post1.jpg",
    "assets/image/post2.jpg",
    "assets/image/post3.jpg",
    "assets/image/post5.jpg",
    "assets/image/post6.jpg",
    "assets/image/post7.jpg",
    "assets/image/post8.jpg",
    "assets/image/post9.jpg",
    "assets/image/post10.jpg",
    "assets/image/post11.jpg",
  ];
  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/image/insta_title.png",
          height: 50,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //story
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(
                              "assets/image/Story.jpg",
                            ),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(
                                profileImage[index],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Profile Name",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Divider(),
              Column(
                children: List.generate(
                  8,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //HEADER POST
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(
                                "assets/image/Story.jpg",
                              ),
                              child: CircleAvatar(
                                radius: 24,
                                backgroundImage: AssetImage(
                                  profileImage[index],
                                ),
                              ),
                            ),
                          ),
                          Text("Profile Name"),
                          Spacer(),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert)),
                        ],
                      ),
                      //IMAGE POST
                      Image.asset(posts[index]),
                      //FOOTER POST
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.favorite_border),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.chat_bubble_outline),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.label_outline),
                            onPressed: () {},
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.bookmark_border),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(text: "Liked by"),
                                  TextSpan(
                                    text: "Profile Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: " and"),
                                  TextSpan(
                                    text: "others",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: "Profile Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          " This is the most amazing picture ever put in Instrafram. "),
                                ],
                              ),
                            ),
                            Text(
                              "View all 12 comments ",
                              style: TextStyle(
                                color: Colors.black38,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
