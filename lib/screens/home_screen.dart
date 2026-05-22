import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data.dart';
import 'package:flutter_application_1/widgets/add_entry_bottomsheet.dart';
import 'package:flutter_application_1/widgets/journal_entry_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Journal App',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: journalEntries.length,
        itemBuilder: (context, index) {
          return JournalEntryCard(entry: journalEntries[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            isScrollControlled: true,
            useSafeArea: true,
            builder: (context) {
              return AddEntryBottomsheet(
                onSave: (entry) {
                  //  state update
                  setState(() {
                    journalEntries.add(entry);
                  });
                },
              );
            },
          );
        },
        backgroundColor: const Color.fromRGBO(233, 210, 141, 1),
        child: const Icon(Icons.add),
      ),
    );
    return scaffold;
  }
}
