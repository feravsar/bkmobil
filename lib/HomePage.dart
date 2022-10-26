import 'package:bkmobil/secondPage.dart';
import 'package:bkmobil/services.dart';
import 'package:bkmobil/users.dart';
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
          visible: isLoaded,
          child: Center(
              child: ListView.builder(
                  itemCount: users?.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                        title: Text(
                            "${users![index].name} ${users![index].surname}"),
                        subtitle: Text(
                            "${users![index].email}\n ${users![index].telephone}"),
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blueAccent,
                            backgroundImage: NetworkImage(
                              users![index].avatar,
                            )),
                        trailing: TextButton(
                          onPressed: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage(
                                      id: users![index].id,
                                      name: users![index].name,
                                      surname: users![index].surname,
                                      email: users![index].email,
                                      telephone: users![index].telephone,
                                      avatar: users![index].avatar)),
                            );
                            debugPrint(users![index].id);
                            debugPrint(users![index].name);
                            debugPrint(users![index].surname);
                            debugPrint(users![index].avatar);
                          }),
                          child: const Text("detay->"),
                        ));
                  }))),
        ));
  }
}
