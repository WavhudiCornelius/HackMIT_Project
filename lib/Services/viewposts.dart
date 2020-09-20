import '../Services/posting.dart';
import '../Widgets/post_card.dart';
import '../constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewPosts extends StatefulWidget {
  final String postsOf, username;
  ViewPosts({this.postsOf, this.username});
  @override
  _ViewPostsState createState() => _ViewPostsState();
}

class _ViewPostsState extends State<ViewPosts> {
  final CollectionReference usersData = Firestore.instance.collection('users');
  final Posting postsData = Posting();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: usersData
          .document(widget.postsOf)
          .collection('posts')
          .orderBy('time')
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        var docs = snapshot.data.documents.reversed;
        List<Widget> doclist = [];
        for (var doc in docs) {
          final docid = doc.documentID;

          delete() async {
            await postsData.deletePost(docId: docid, username: widget.postsOf);
          }

          edit() async {
            await postsData.editPost(
              username: widget.postsOf,
              docId: docid,
              post: 'requires input ui',
              why1: 'requires input ui',
              why2: 'requires input ui',
              why3: 'requires input ui',
            );
          }

          reply() async {
            await postsData.replyPost(
              docId: docid,
              postedUserName: widget.username,
              replierName: widget.username,
              reply: 'requires input ui',
              why1: 'requires input ui',
              why2: 'requires input ui',
              why3: 'requires input ui',
            );
          }

          doclist.add(
            Column(
              children: <Widget>[
                PostCard(
                  username: widget.postsOf,
                  post: doc.data['post'],
                  why1: doc.data['why1'],
                  why2: doc.data['why2'],
                  why3: doc.data['why3'],
                  // timeOfThePost: doc.data['time'],
                  timeOfThePost: doc.data['time'].toString(),
                  color: kDarkGrey,
                  profilePhoto: NetworkImage(
                    'http://images.askmen.com/1080x540/2016/01/25-021526-facebook_profile_picture_affects_chances_of_getting_hired.jpg',
                  ),

                  deletePost: delete,
                  editPost: edit,
                  replyToPost: reply,
                )
              ],
            ),
          );
        }
        return ListView(
          children: doclist,
        );
      },
    );
  }
}
