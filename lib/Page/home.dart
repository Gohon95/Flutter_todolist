import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 18),
                  ElevatedButton(
                    child: const Text('Todo List'),
                    onPressed: () async => await Navigator.of(context).pushNamed('/todolist'),
                  ),
                  ElevatedButton(
                    child: const Text('Add Todo'),
                    onPressed: () async => await Navigator.of(context).pushNamed('/addtodo'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 15, left: 5),
            child: Row(
              children: [
                const FlutterLogo(),
                Text(
                  'Microsoft Todo',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async => await Navigator.of(context).pushNamed('/deletetodo'), child: const Text('Delete'),
        tooltip: 'Increment',
      ),
    );
  }
}