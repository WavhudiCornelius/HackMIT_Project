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
}
