// ignore_for_file: public_member_api_docs, sort_constructors_first
class Album {
  int? userId;
  int? id;
  String? title;

  Album({
    this.userId,
    this.id,
    this.title,
  });

  factory Album.fromJson(Map<String, dynamic> map) {
    return Album(
      userId: map['userId'],
      id: map['id'],
      title: map['title'],
    );
  }
}
