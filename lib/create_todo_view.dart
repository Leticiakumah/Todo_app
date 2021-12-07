import 'dart:html';

import 'package:flutter/material.dart';

class CreateTodo extends StatelessWidget {
  const CreateTodo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CreateTodo"),
      ),
      body: ListView(
        children: [
          TextFormField(
              decoration: const InputDecoration(
            label: Text("Title"),
          )),
          const SizedBox(
            height: 100,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text("Description"),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(label: Text("Start Date")),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(label: Text("End Date")),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Create",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
