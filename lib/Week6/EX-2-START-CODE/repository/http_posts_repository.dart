import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:week5/Week6/EX-2-START-CODE/dto/post_dto.dart';
import '../model/post.dart';
import 'post_repository.dart';

class HttpPostsRepository extends PostRepository {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com/posts';

  @override
  Future<List<Post>> getPosts() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((data) => PostDTO.fromJson(data).toPost()).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }

  @override
  Future<Post> getPost(int postId) async {
    final response = await http.get(Uri.parse('$baseUrl/$postId'));

    if (response.statusCode == 200) {
      return PostDTO.fromJson(json.decode(response.body)).toPost();
    } else {
      throw Exception('No post found');
    }
  }
}
