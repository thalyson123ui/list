import 'package:flutter/material.dart';

void main() => runApp(const ListApp());

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  final List<String> items = const [
    'task1',
    'task2',
    'task3',
    'task4',
    'task5',
    'task6',
    'task7',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LIST APP',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List App'),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(
                Icons.check_circle,
                color: Color.fromARGB(255, 0, 0, 0),
                child: Icon(icons.acount_box),
              ),
              title: Text(
                items[index],
                style: TextStyle(color: Color.fromARGB(255, 147, 75, 7)),
              ),
              subtitle: Text(
                newMethod(index),
                style: TextStyle(color: Color.fromARGB(255, 129, 3, 239)),
              ),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }

  String newMethod(int index) => "sub ${index + 1} teste";
}
