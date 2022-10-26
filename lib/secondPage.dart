import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String id;
  final String name;
  final String surname;
  final String email;
  final String telephone;
  final String avatar;

  const SecondPage(
      {Key? key,
      required this.id,
      required this.name,
      required this.surname,
      required this.email,
      required this.telephone,
      required this.avatar})
      : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(),
    );
  }
}
