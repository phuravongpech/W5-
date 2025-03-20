// ignore_for_file: avoid_print

import 'package:week5/Week5/ASYNC_SYNC-Test/repository/mock_post_repository.dart';
import 'package:week5/Week5/ASYNC_SYNC-Test/repository/post_repository.dart';

void main() {
  // 1- Create the repo

  // TODO
  PostRepository postRepository = MockPostRepository();

  // 2- Request the post  - Success

  // TODO
  postRepository
      .getPost(26)
      .then((value) {
        print(value);
      })
      .catchError((error) {
        print(error);
      });

  // 3- Request the post - Failed

  // TODO
  postRepository
      .getPost(27)
      .then((value) {
        print(value);
      })
      .catchError((error) {
        print(error);
      });
}
