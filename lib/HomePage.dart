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
  final url = Uri.parse("https://6358de73ff3d7bddb9928f82.mockapi.io/users");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BK MOBİL CASE PROJECT"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: 50,
            itemBuilder: ((context, index) {
              return ListTile(
                  title: Text("Test Title"),
                  subtitle: Text("Subtitle"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                  ),
                  trailing: TextButton(
                    onPressed: (() {}),
                    child: const Text("detay"),
                  ));
            })),
      ),
    );
  }
}
