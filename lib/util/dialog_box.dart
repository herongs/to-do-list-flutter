import 'package:flutter/material.dart';
import 'package:todo_list_flutter/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSaved;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSaved,
      required this.onCancel});

  void addNewTask(
      //clo
      ) {}

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 120,
        width: 170,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Criar Nova Tarefa',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyButton(text: "Cancel", onPressed: onCancel),
                MyButton(text: "Save", onPressed: onSaved),
              ],
            )
          ],
        ),
      ),
    );
  }
}
