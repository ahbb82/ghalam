class User {
  int? id;
  String? name;
  bool? isWriter;

  User({this.id, this.name, this.isWriter});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    isWriter = json['isWriter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['isWriter'] = this.isWriter;
    return data;
  }
  @override
  String toString() {
    return '{id: $id, name: $name, isWriter: $isWriter}';
  }
}