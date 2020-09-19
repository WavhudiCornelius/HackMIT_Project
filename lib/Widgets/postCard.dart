import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String username, post, why1, why2, why3;
  final void Function() deletePost, editPost, replyToPost;
  PostCard(
      {this.username,
      this.post,
      this.why1,
      this.why2,
      this.why3,
      this.deletePost,
      this.editPost,
      this.replyToPost});
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
