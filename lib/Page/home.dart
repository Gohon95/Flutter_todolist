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
              label: '/Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async => await Navigator.of(context).pushNamed('/addtodo'),
          label: const Text('Add Todo'),
          icon: const Icon(Icons.calendar_today_outlined),
          backgroundColor: Colors.blue,
        ),
      );
    }
  }

   // return Scaffold(
    //  appBar: AppBar(
     //   title: const Text('Home'),
    //  ),
     // floatingActionButton: FloatingActionButton(
     //   onPressed: () async => await Navigator.of(context).pushNamed('/addtodo'),
      //  child: const Icon(Icons.add),
    //  ),
    //);

