import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('Home')),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'deletetodo', )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async => await Navigator.of(context).pushNamed('/addtodo'), child: const Text('Add Todo'),
          ),
          ElevatedButton(
            onPressed: () async => await Navigator.of(context).pushNamed('/deletetodo'), child: const Text('Delete Todo'),
          ),
        ],
      ),
    );
  }
}