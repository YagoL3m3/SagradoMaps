class Blocos {
  String id;
  String name;

  Blocos({required this.id, required this.name});

  Blocos.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
    };
  }
}
