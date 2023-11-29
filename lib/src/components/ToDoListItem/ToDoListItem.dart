import 'package:flutter/material.dart';
import '../../../types.dart';

class ToDoListItem extends StatefulWidget {
  final ListItemType item;

  const ToDoListItem({super.key, required this.item});
  @override
  State<ToDoListItem> createState() => _ToDoListItemState();
}

class _ToDoListItemState extends State<ToDoListItem> {
  @override
  Widget build(BuildContext context) {
    bool enabled = widget.item.isDone;

    onChange() {
      setState(() {
        widget.item.isDone = !enabled;
      });
    }

    return ListTile(
      title: Text(widget.item.title),
      tileColor: widget.item.isDone ? Colors.greenAccent : Colors.redAccent,
      onTap: onChange,
      trailing: Checkbox(
        onChanged: (bool? value) {
          setState(() {
            widget.item.isDone = !enabled;
          });
        },
        value: enabled,
      ),
    );
  }
}
