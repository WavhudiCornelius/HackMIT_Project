import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  PostCard({
    @required this.username,
    @required this.post,
    @required this.why1,
    @required this.why2,
    @required this.why3,
    @required this.timeOfThePost,
    @required this.deletePost,
    @required this.editPost,
    @required this.replyToPost,
    @required this.onTap,
    @required this.color,
    @required this.profilePhoto,
  });
  final String username, post, why1, why2, why3;
  final void Function() deletePost, editPost, replyToPost, onTap;
  final Color color;
  final Image profilePhoto;
  final DateTime timeOfThePost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          // height: 140.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(
              Radius.circular(28.0),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: profilePhoto,
                  ),
                  Column(
                    children: [
                      Text(username),
                      Text(
                        timeOfThePost.toString(),
                      ),
                    ],
                  ),
                ],
              ),
              Text(post),
              Text(why1),
              Text(why2),
              Text(why3),
            ],
          ),
        ),
      ),
    );
  }
}

//           // child: Row(
//           //   children: <Widget>[
//           //     Expanded(
//           //       flex: 7,
//           //       child: Container(
//           //         child: Padding(
//           //           padding: const EdgeInsets.fromLTRB(16.0, 8.0, 4.0, 8.0),
//           //           child: Column(
//           //             crossAxisAlignment: CrossAxisAlignment.start,
//           //             mainAxisAlignment: MainAxisAlignment.start,
//           //             children: <Widget>[
//                         // Text(
//                         //   'title',
//                         //   style: TextStyle(
//                         //     fontSize: 16.0,
//                         //   ),
//                         //   maxLines: 2,
//                         //   overflow: TextOverflow.ellipsis,
//                         // ),
//                         // Text(
//                         //   'url',
//                         //   style: TextStyle(
//                         //     color: Colors.black54,
//                         //     fontSize: 11.0,
//                         //   ),
//                         //   maxLines: 1,
//                         //   overflow: TextOverflow.ellipsis,
//                         // ),
//                         // SizedBox(
//                         //   height: 8,
//                         // ),
//                         // Text(
//                         //   'description',
//                         //   style: TextStyle(
//                         //     color: Colors.black87,
//                         //     fontSize: 12.0,
//                         //   ),
//                         //   maxLines: 4,
//                         //   overflow: TextOverflow.ellipsis,
//                         // ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               // Expanded(
//               //   flex: 3,
//               //   child: Container(
//               //     height: double.infinity,
//               //     width: double.infinity,
//               //     child: ClipRRect(
//               //       borderRadius: BorderRadius.horizontal(
//               //         right: Radius.circular(19.0),
//               //       ),
//               //       child: Image.memory(
//               //         //imageSource,
//               //         base64.decode(imageSource),
//               //         fit: BoxFit.cover,
//               //       ),
//               //     ),
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
