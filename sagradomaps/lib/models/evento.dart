class Eventos {
  String id;
  String name;
  String descricao;
  double lat;
  double long;

  Eventos({required this.id, required this.name,required this.descricao,required this.lat,required this.long});

  Eventos.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        descricao = map["descricao"],
        lat = map["lat"],
        long = map["long"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "descricao" : descricao,
      "lat" : lat,
      "long" : long,
    };
  }
}
