// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:todoapp/create_todo_view.dart';

class MyTodo_app extends StatelessWidget {
  const MyTodo_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Center(
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1633114072460-c7dd0b7c6161?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60"),
          ),
        ),
        title: Text(
          "My Task",
          style: TextStyle(color: Colors.indigo.shade900),
        ),
        actions: [
          Icon(Icons.filter_list, color: Colors.indigo.shade900),
          Icon(Icons.search, color: Colors.indigo.shade900)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
        ]),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          color: Color.fromRGBO(220, 229, 238, 1),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(Icons.check_circle, color: Color.fromRGBO(56, 53, 123, 1)),
                SizedBox(
                  width: 20,
                ),
                Text("Completed"),
                Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Color.fromRGBO(92, 98, 122, 1),
                ),
                Spacer(),
                Text("24")
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CreateTodo();
          }));
        },
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}

class TodoWidget extends StatelessWidget {
  const TodoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        color: Colors.white,
        child: ListTile(
            leading: Icon(
              Icons.check_circle_outline,
              color: Colors.purpleAccent,
            ),
            title: Text(
              "plan to the trip to Finland",
              style: TextStyle(color: Colors.indigo),
            ),
            subtitle: Text(
              "The family's trip to Finland next summer",
              style: TextStyle(color: Colors.purpleAccent),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                Icon(
                  Icons.notifications,
                  color: Colors.purpleAccent,
                  size: 15,
                ),
                Text(
                  "Yesterday",
                  style: TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 10,
                  ),
                )
              ],
            )));
  }
}
