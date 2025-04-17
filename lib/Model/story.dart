class Story {
  int? id;
  String? title;
  String? text;

  Story({this.id, this.title, this.text});

  Story.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['text'] = this.text;
    return data;
  }

  @override
  String toString() {
    return 'Story{id: $id, title: $title, text: $text}';
  }
}