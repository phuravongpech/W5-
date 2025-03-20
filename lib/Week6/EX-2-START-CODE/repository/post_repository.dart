import '../model/post.dart';

abstract class PostRepository {
  Future<List<Post>> getPosts();
  Future<Post> getPost(int postId);
}
