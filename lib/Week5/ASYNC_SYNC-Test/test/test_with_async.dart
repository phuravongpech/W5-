// ignore_for_file: avoid_print

import 'package:week5/Week5/ASYNC_SYNC-Test/repository/mock_post_repository.dart';
import 'package:week5/Week5/ASYNC_SYNC-Test/repository/post_repository.dart';
import 'package:week5/Week5/ASYNC_SYNC-Test/repository/server_post_repository.dart';

void main() async {
  // 1- Create the repo

  // TODO
  PostRepository mockPostRepository = MockPostRepository();

  PostRepository realPostRepository = ServerPostRepository();

  // 2- Request the post  - Success

  // TODO
  mockPostRepository.getPost(26);
  print('Requesting post 26...');

  // 3- Request the post - Failed

  // TODO
  mockPostRepository.getPost(27);
  print('Requesting post 27...');

  // // 4- Request the post  - Success
  // realPostRepository.getPost(26);
  // print('Requesting post 26...');

  // // 5- Request the post - Failed
  // realPostRepository.getPost(27);
  // print('Requesting post 27...');
}
