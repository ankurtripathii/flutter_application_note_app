
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/journal_entry_model.dart';

class JournalEntryCard extends StatelessWidget {
  final JournalEntry entry;
  const JournalEntryCard({super.key, required this.entry});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 249, 236, 147),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 8,
      child: Container(
        padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            SizedBox(height: 10,),
          Text(entry.title ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          SizedBox(height: 10,),
          Text(entry.content ,style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          Text(entry.date ,style: TextStyle(fontSize: 20,color: Colors.grey),),
        ],
      ),
    ));
  }
}
 