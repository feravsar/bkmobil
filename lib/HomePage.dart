import 'package:bkmobil/services.dart';
import 'package:bkmobil/users.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Users>? users;
  var isLoaded = false;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    users = await Services().getUsers();
    if (users != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BK MOBİL CASE PROJECT"),
        ),
        body: Visibility(
          child: Center(
              child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: ((context, index) {
                    return ListTile(
                        title: Text("Title"),
                        subtitle: Text("Subtitle"),
                        leading: CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                        ),
                        trailing: TextButton(
                          onPressed: (() {
                            int counter = 50;
                            debugPrint(counter.toString());
                          }),
                          child: const Text("detay"),
                        ));
                  }))),
        ));
  }
}
