import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Addtodo extends StatefulWidget {
  const Addtodo({Key? key}) : super(key: key);

  @override
  State<Addtodo> createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {
  List todos = List.empty();
  String title = "Todo";
  String description = "bb";

  @override
  void initState() {
    super.initState();
    todos = ["Hello", "Hey There"];
  }
  createTodo() {
    CollectionReference ref = FirebaseFirestore.instance.collection("MyTodos");

    Map<String, String> todoList = {
      "todoTitle": title,
      "todoDesc": description
    };

    ref.add(todoList).whenComplete(() => print("Date stored successfuly"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: todos.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(index.toString()),
                child: Card(
                  elevation: 4,
                  child: ListTile(
                    title: const Text("à faire"),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      color: Colors.red,
                      onPressed: () {
                        setState(() {
                          todos.removeAt(index);
                        });
                      },
                    ),
                  ),
                ));
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Text("Add Todo"),
                  content: SizedBox(
                    width: 400,
                    height: 100,
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (String value) {
                            description = value;
                          },
                        ),
                        TextField(
                          onChanged: (String value) {
                            description = value;
                          },
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                        onPressed: ()
                        {
                          setState(() {
                            todos.add(title);
                            createTodo();
                          });
                          Navigator.of(context).pop();
                        },
                        child: const Text("Add"))
                  ],
                );
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}