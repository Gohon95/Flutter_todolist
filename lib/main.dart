import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todolist2/Page/home.dart';
import 'package:todolist2/Page/todolist.dart';
import 'package:todolist2/Page/deleteTodo.dart';

import 'Page/addtodo.dart';
import 'Page/deleteTodo.dart';
import 'Page/todolist.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Todo());
}

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Todolist',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/home': (context) => const Home(),
        '/addtodo': (context) => const Addtodo(),
        '/deletetodo': (context) => const DeleteTodo(),
        '/todolist': (context) => const Todolist(),
      },
      home: const Home(),
    );
  }
}
