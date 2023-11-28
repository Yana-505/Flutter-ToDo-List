import 'package:flutter/material.dart';
import 'package:todo/src/mock/mock.dart';

void main() {
  runApp(MyApp(
    items: list,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.items});

  final List<String> items;

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
            prototypeItem: ListTile(
              title: Text(items.first),
            ),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            }),
      ),
    );
  }
}
