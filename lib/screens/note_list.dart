import 'package:flutter/material.dart';
import 'package:notes_app_flutter_api/screens/notes_modify.dart';
import 'package:notes_app_flutter_api/utils/constants.dart';
import 'package:notes_app_flutter_api/models/notes_for_listing.dart';

class NoteList extends StatelessWidget {
  NoteList({super.key});

  final notes = [
    NotesForListing(
      noteID: 1,
      noteTitle: 'Note 1',
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
    ),
    NotesForListing(
      noteID: 2,
      noteTitle: 'Note 2',
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
    ),
    NotesForListing(
      noteID: 3,
      noteTitle: 'Note 3',
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
    ),
  ];

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Notes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NotesModify(),
            ),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (_, __) => const Divider(
          height: 1,
          color: Colors.green,
        ),
        itemCount: notes.length,
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(
              notes[index].noteTitle,
              style: kNotesTitleStyle,
            ),
            subtitle: Text(
              'Last edited on ${formatDateTime(notes[index].lastEditDateTime)}',
              style: kNotesSubtitleStyle,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      NotesModify(noteID: notes[index].noteID),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
