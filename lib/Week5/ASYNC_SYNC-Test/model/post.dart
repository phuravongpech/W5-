class Post {
  final int id;
  final String title;
  final String description;

  Post({required this.id, required this.title, required this.description});

  @override
  String toString() {
    // TODO: implement toString
    return 'Post{id: $id, title: $title, description: $description}';
  }
}
