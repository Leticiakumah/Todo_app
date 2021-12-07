import 'package:flutter/material.dart';

class CreateTodo extends StatelessWidget {
  const CreateTodo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CreateTodo"),
        ),
        body: ListView(children: [
          TextFormField(
              decoration: InputDecoration(
            label: Text("Title"),
          ))
        ]));
  }
}
