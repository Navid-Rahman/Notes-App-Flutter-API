// ignore_for_file: public_member_api_docs, sort_constructors_first
class NotesForListing {
  DateTime createDateTime;
  DateTime lastEditDateTime;
  int noteID;
  String noteTitle;

  NotesForListing({
    required this.noteID,
    required this.noteTitle,
    required this.createDateTime,
    required this.lastEditDateTime,
  });
}
