import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged,
      required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: deleteFunction,
            backgroundColor: Colors.red.shade300,
            icon: Icons.delete,
            borderRadius: BorderRadius.circular(8),
          ),
        ],
      ),
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: taskCompleted
            ? BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(8),
              )
            : BoxDecoration(
                color: Color.fromARGB(221, 212, 212, 212),
                borderRadius: BorderRadius.circular(8),
              ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.green,
            ),
            Expanded(
                child: Text(
              taskName,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decorationColor: Colors.green,
                  decorationThickness: 3,
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            )),
          ],
        ),
      ),
    );
  }
}
