import 'package:flutter/material.dart';
import 'package:notes_app_flutter_api/screens/note_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Notes',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: NoteList(),
    );
  }
}
