import 'package:notes_app_flutter_api/models/notes_for_listing.dart';

class NotesService {
  List<NotesForListing> getNotesList() {
    return [
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
  }
}
