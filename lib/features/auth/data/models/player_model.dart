class PlayerModel {
  String id;
  final String email;
  final String name;

  PlayerModel({required this.id, required this.email, required this.name});

  factory PlayerModel.fromJson(Map<String, dynamic> json) {
    return PlayerModel(
      email: json['email'],
      name: json['name'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'email': email, 'name': name, 'id': id};
  }
}
