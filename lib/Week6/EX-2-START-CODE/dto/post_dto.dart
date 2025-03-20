import 'package:week5/Week6/EX-2-START-CODE/model/post.dart';

class PostDTO {
  final int id;
  final String title;
  final String description;

  PostDTO({required this.id, required this.title, required this.description});

  factory PostDTO.fromJson(Map<String, dynamic> json) {
    assert(json['id'] is int, 'ID is missing or not an integer');
    assert(json['title'] is String, 'Title is missing or not a string');
    assert(json['body'] is String, 'Body is missing or not a string');

    return PostDTO(
      id: json['id'],
      title: json['title'],
      description: json['body'],
    );
  }

  Post toPost() => Post(id: id, title: title, description: description);
}
