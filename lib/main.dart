import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:notes_app_flutter_api/screens/note_list.dart';
import 'package:notes_app_flutter_api/services/note_service.dart';

void setupLocator() {
  GetIt.instance.registerLazySingleton(
    () => NotesService(),
  );
}

void main() {
  setupLocator();
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
