import 'package:cloud_firestore/cloud_firestore.dart';

class Posting {
  final CollectionReference posts = Firestore.instance.collection("users");

  addPost(
      {String username,
      String post,
      String why1,
      String why2,
      String why3}) async {
    await posts.document(username).collection('posts').add({
      'time': Timestamp.now(),
      'post': post,
      'why1': why1,
      'why2': why2,
      'why3': why3
    });
  }

  editPost(
      {String username,
      String post,
      String why1,
      String why2,
      String why3,
      String docId}) async {
    await posts.document(username).collection('posts').document(docId).setData({
      'time': Timestamp.now(),
      'post': post,
      'why1': why1,
      'why2': why2,
      'why3': why3
    });
  }

  deletePost({String username, String docId}) async {
    await posts.document(username).collection('posts').document(docId).delete();
  }

  replyPost({
    String postedUserName,
    String replierName,
    String docId,
    String why1,
    String why2,
    String why3,
    String reply,
  }) async {
    await posts
        .document(postedUserName)
        .collection('posts')
        .document(docId)
        .collection('replies')
        .add({
      'time': Timestamp.now(),
      'replier': replierName,
      'reply': reply,
      'why1': why1,
      'why2': why2,
      'why3': why3
    });
  }
}
