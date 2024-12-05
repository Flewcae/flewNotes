class Note {
  const Note(this.id, this.title, this.body, this.created);

  final int id;
  final String title;
  final String body;
  final String created;

  // JSON'dan Note nesnesi oluşturma
  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      json['id'] as int,
      json['title'] as String,
      json['body'] as String,
      json['created'] as String,
    );
  }

  // Note nesnesini JSON'a dönüştürme
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'created': created,
    };
  }
}
