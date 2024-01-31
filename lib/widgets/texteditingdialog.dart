// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class TaskEditDialog extends StatefulWidget {
  final String currentTask;

  const TaskEditDialog({super.key, required this.currentTask});

  @override
  _TaskEditDialogState createState() => _TaskEditDialogState();
}

class _TaskEditDialogState extends State<TaskEditDialog> {
  late TextEditingController _taskController;
  @override
  void initState() {
    super.initState();
    _taskController = TextEditingController(text: widget.currentTask);
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: const Text('Edit Task'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _taskController,
            decoration: InputDecoration(labelText: 'Task'),
          ),
        ],
      ),
      actions: [  
        TextButton(
          onPressed: () {
            Navigator.pop(context); // Close the dialog without saving changes
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            // Save the changes and close the dialog
            String updatedTask = _taskController.text;
             
            // You can perform further actions like updating the task in your data structure here
            Navigator.pop(context, updatedTask);
          },
          child: Text('Save'),
        ),
      ],
    );
  }
}
