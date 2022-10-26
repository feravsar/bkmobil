import 'package:bkmobil/users.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//Future<List<Users>?>

class Services {
  Future<List<Users>?> getUsers() async {
    final client = http.Client();

    final uri = Uri.parse("https://6358de73ff3d7bddb9928f82.mockapi.io/users");
    final response = await client.get(uri);
    try {
      if (response.statusCode == 200) {
        final result = usersFromJson(response.body);
        debugPrint(result.first.avatar);
        debugPrint(result.first.name);
        debugPrint(result.first.surname);
        debugPrint(result.first.email);
        debugPrint(result.first.telephone);
        return result;
      } else {
        debugPrint(response.statusCode.toString());
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
