import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/journal_entry_model.dart';
import 'package:intl/intl.dart';

class AddEntryBottomsheet extends StatefulWidget {
  final Function(JournalEntry) onSave;
  const AddEntryBottomsheet({super.key, required this.onSave});
  @override
  State<AddEntryBottomsheet> createState() => _AddEntryBottomsheetState();
}

class _AddEntryBottomsheetState extends State<AddEntryBottomsheet> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: "Title",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _contentController,
              decoration: InputDecoration(
                labelText: "Content",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    JournalEntry j = JournalEntry(
                      id: Random().nextInt(100).toString(),
                      title: _titleController.text,
                      content: _contentController.text,
                      date: DateFormat('dd/MM/yyyy').format(DateTime.now()),
                    );

                    widget.onSave(j);

                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
