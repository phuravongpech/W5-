import '../model/post.dart';

import 'post_repository.dart';

class MockPostRepository extends PostRepository {
  final List<Post> _posts = [
    Post(id: 1, title: 'First Post', description: 'This is the first post'),
    Post(id: 2, title: 'Second Post', description: 'This is the second post'),
    Post(id: 3, title: 'Third Post', description: 'This is the third post'),
    Post(id: 4, title: 'Fourth Post', description: 'This is the fourth post'),
    Post(id: 5, title: 'Fifth Post', description: 'This is the fifth post'),
  ];

  @override
  Future<List<Post>> getPosts() async {
    print('on getPosts clicked');
    return Future.delayed(Duration(seconds: 5), () => _posts);
  }

  @override
  Future<Post> getPost(int postId) {
    return Future.delayed(Duration(seconds: 5), () {
      if (postId != 25) {
        throw Exception("No post found");
      }
      return Post(
        id: 25,
        title: 'Who is the best',
        description: 'teacher ronan',
      );
    });
  }
}
