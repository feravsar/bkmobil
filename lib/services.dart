import 'package:bkmobil/users.dart';
import 'package:http/http.dart' as http;

class Services {
  Future<List<Users>?> getUsers() async {
    var client = http.Client();

    var uri = Uri.parse("https://6358de73ff3d7bddb9928f82.mockapi.io/users");
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return usersFromJson(json);
    }
  }
}
