// TODO

import 'package:week5/Week5/ASYNC_SYNC-Test/model/post.dart';
import 'package:week5/Week5/ASYNC_SYNC-Test/repository/post_repository.dart';

class MockPostRepository extends PostRepository {
  List<Post> posts = [
    Post(id: 25, title: "Who is the second best", description: "Ronaldo"),
    Post(id: 26, title: "Who is the goat", description: "Messi"),
  ];

  @override
  Future<Post> getPost(int postId) {
    // TODO: implement getPost
    try {
      return Future.delayed(Duration(seconds: 3), () {
        if (!posts.any((element) => element.id == postId)) {
          throw Exception('Post not found');
        }
        return posts.firstWhere((element) => element.id == postId);
      });
    } catch (e) {
      return Future.error(e);
    }
  }
}
