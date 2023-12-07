import 'package:flutter/material.dart';
import 'package:insta_clone/util/bubble_stories.dart';
import 'package:insta_clone/util/user_post.dart';

class UserHome extends StatelessWidget {
  final List people = ['Mamta', 'Aryan', ' Priya', ' Dev', 'Laxmi', 'Seema'];
  UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instagram',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(padding: EdgeInsets.all(14)),
                  Icon(Icons.messenger_sharp),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return BubbleStories(text: people[index]);
                  },
                )),
//Posts
            Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPosts(name: people[index]);
                  }),
            )
          ],
        ));
  }
}
