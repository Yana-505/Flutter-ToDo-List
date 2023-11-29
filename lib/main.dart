import 'package:flutter/material.dart';
import 'package:todo/src/components/ToDoListItem/ToDoListItem.dart';
import 'package:todo/src/mock/mock.dart';
import 'package:todo/types.dart';

void main() {
  runApp(MyApp(
    items: list,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.items});

  final List<ListItemType> items;

  void _addItemToDo() {
    print("add item");
  }

  @override
  Widget build(BuildContext context) {
    const title = "ToDo List";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ToDoListItem(
                item: items[index],
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: _addItemToDo,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
