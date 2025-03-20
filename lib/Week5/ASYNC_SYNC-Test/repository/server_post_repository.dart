import 'package:week5/Week5/ASYNC_SYNC-Test/model/post.dart';
import 'package:week5/Week5/ASYNC_SYNC-Test/repository/post_repository.dart';

class ServerPostRepository extends PostRepository{
  @override
  Future<Post> getPost(int postId) {

    List<Post> posts = [
      Post(id: 25, title: "Who is the best", description: "teacher Ronan"),
      Post(id: 26, title: "Who is the goat", description: "Messi"),
    ];

    try {
      return Future.delayed(Duration(seconds: 3), () {
        return posts.firstWhere((element) => element.id == postId);
      });
    } catch (e) {
      return Future.error(e);
    }
  }
}