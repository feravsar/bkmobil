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
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(widget.avatar),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "${widget.name} ${widget.surname}",
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ")
                ],
              ),
            ),
          ),
        ));
  }
}
