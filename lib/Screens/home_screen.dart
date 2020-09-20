import 'package:flutter/material.dart';

import '../Services/posting.dart';
import '../Widgets/post_card.dart';
import '../constants.dart';

class HomeScreen extends StatelessWidget {
  static const String route = 'HomeScreen';
  final Posting posting = Posting();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBlue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Posts',
                style: TextStyle(
                    color: kWhite, fontWeight: FontWeight.bold, fontSize: 34),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView(children: [
                  PostCard(
                    username: 'Ashish',
                    post: 'Chocolate is bad for you.',
                    why1: 'I dont know',
                    why2: 'I dont know',
                    why3: 'I dont know',
                    timeOfThePost: DateTime.now(),
                    deletePost: null,
                    editPost: null,
                    replyToPost: null,
                    onTap: () {},
                    color: kDarkGrey,
                    profilePhoto: NetworkImage(
                        'http://images.askmen.com/1080x540/2016/01/25-021526-facebook_profile_picture_affects_chances_of_getting_hired.jpg'),
                  ),
                  PostCard(
                    username: 'Ashish',
                    post: 'Chocolate is bad for you.',
                    why1: 'I dont know',
                    why2: 'I dont know',
                    why3: 'I dont know',
                    timeOfThePost: DateTime.now(),
                    deletePost: null,
                    editPost: null,
                    replyToPost: null,
                    onTap: () {},
                    color: kDarkGrey,
                    profilePhoto: NetworkImage(
                        'http://images.askmen.com/1080x540/2016/01/25-021526-facebook_profile_picture_affects_chances_of_getting_hired.jpg'),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// child: FlatButton(
//     onPressed: () async {
//       // await posting.addPost(
//       // username: 'ajay',
//       // post: 'this post',
//       // why1: 'hello',
//       // why2: 'hhehe',
//       // why3: 'plss');
//       await posting.replyPost(
//           postedUserName: 'ajay',
//           replierName: 'ashish',
//           docId: 'FFsTqHRU38pzI1sGkcuMX',
//           reply: 'this post',
//           why1: 'hello',
//           why2: 'hhehe',
//           why3: 'plss');
//       // await posting.deletePost(
//       //     username: 'ajay', docId: 'Bwim9RHEZ6ZMQeEGBdYE');
//     },
//     child: Text('test')),
// ),
