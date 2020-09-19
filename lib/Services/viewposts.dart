import 'package:HackMIT_Project/Services/posting.dart';
import 'package:HackMIT_Project/Widgets/postCard.dart';
import 'package:HackMIT_Project/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewRequests extends StatefulWidget {
  final String postsOf, username;
  ViewRequests({this.postsOf, this.username});
  @override
  _ViewRequestsState createState() => _ViewRequestsState();
}

class _ViewRequestsState extends State<ViewRequests> {
  final CollectionReference usersData = Firestore.instance.collection('users');
  final Posting postsData = Posting();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kDarkBlue,
          title: Text('Posts by ${widget.postsOf}'),
        ),
        body: StreamBuilder<QuerySnapshot>(
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
                  await postsData.deletePost(
                      docId: docid, username: widget.postsOf);
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

                doclist.add(Column(children: <Widget>[
                  PostCard(
                    username: doc.data[widget.postsOf],
                    post: doc.data['post'],
                    why1: doc.data['why1'],
                    why2: doc.data['why2'],
                    why3: doc.data['why3'],
                    deletePost: delete,
                    editPost: edit,
                    replyToPost: reply,
                  )
                ]));
              }
              return MaterialApp(
                  home: Scaffold(
                backgroundColor: kDarkBlue,
                body: ListView(
                  children: doclist,
                ),
              ));
            }));
  }
}
