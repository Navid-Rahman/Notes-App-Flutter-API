import 'package:flutter/material.dart';

class NotesModify extends StatelessWidget {
  const NotesModify({
    Key? key,
    this.noteID,
  });

  final int? noteID;

  bool get isEditing => noteID != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? 'Edit Notes' : 'Create Notes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Title',
                labelText: 'Title',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.title),
              ),
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Type your note here...',
                labelText: 'Note',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.notes),
                alignLabelWithHint: true,
              ),
              maxLines: null,
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (isEditing) {
                    // Update notes in API
                  } else {
                    // Create notes in API
                  }
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 12.0),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
