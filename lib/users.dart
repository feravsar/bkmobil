// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

List<Users> usersFromJson(String str) =>
    List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

String usersToJson(List<Users> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Users {
  Users({
    required this.id,
    required this.name,
    required this.surname,
    required this.email,
    required this.telephone,
    required this.avatar,
  });
  String id;
  String name;
  String surname;
  String email;
  String telephone;
  String avatar;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        name: json["name"],
        surname: json["surname"],
        email: json["email"],
        telephone: json["telephone"],
        avatar: json["avatar"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "surname": surname,
        "email": email,
        "telephone": telephone,
        "avatar": avatar,
        "id": id,
      };
}
