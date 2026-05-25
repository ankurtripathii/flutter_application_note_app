import 'package:flutter/material.dart';
import '../models/note.dart';

class NoteProvider extends ChangeNotifier {
  final List<Note> _notes = [
    Note(
      id: '1',
      title: 'Welcome to Notes!',
      content: 'Tap the + button to create a new note. Long press a note to delete it.',
      color: const Color(0xFFFFF9C4),
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      isPinned: true,
    ),
    Note(
      id: '2',
      title: 'Shopping List',
      content: 'Milk, Eggs, Bread, Butter, Coffee',
      color: const Color(0xFFB2EBF2),
      createdAt: DateTime.now().subtract(const Duration(hours: 3)),
    ),
    Note(
      id: '3',
      title: 'Flutter Tips',
      content: 'Use Provider for state management. Keep widgets small. Separate UI from logic.',
      color: const Color(0xFFC8E6C9),
      createdAt: DateTime.now().subtract(const Duration(hours: 1)),
    ),
  ];

  String _searchQuery = '';
  String _selectedFilter = 'All';

  List<Note> get notes {
    List<Note> filtered = List.from(_notes);

    if (_searchQuery.isNotEmpty) {
      filtered = filtered.where((note) {
        return note.title.toLowerCase().contains(_searchQuery.toLowerCase()) ||
            note.content.toLowerCase().contains(_searchQuery.toLowerCase());
      }).toList();
    }

    if (_selectedFilter == 'Pinned') {
      filtered = filtered.where((note) => note.isPinned).toList();
    }

    filtered.sort((a, b) {
      if (a.isPinned && !b.isPinned) return -1;
      if (!a.isPinned && b.isPinned) return 1;
      return b.createdAt.compareTo(a.createdAt);
    });

    return filtered;
  }

  int get totalNotes => _notes.length;
  int get pinnedNotes => _notes.where((n) => n.isPinned).length;
  String get searchQuery => _searchQuery;
  String get selectedFilter => _selectedFilter;

  void addNote(String title, String content, Color color) {
    final note = Note(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: title.isEmpty ? 'Untitled' : title,
      content: content,
      color: color,
      createdAt: DateTime.now(),
    );
    _notes.add(note);
    notifyListeners();
  }

  void updateNote(String id, String title, String content, Color color) {
    final index = _notes.indexWhere((n) => n.id == id);
    if (index != -1) {
      _notes[index].title = title.isEmpty ? 'Untitled' : title;
      _notes[index].content = content;
      _notes[index].color = color;
      notifyListeners();
    }
  }

  void deleteNote(String id) {
    _notes.removeWhere((n) => n.id == id);
    notifyListeners();
  }

  void togglePin(String id) {
    final index = _notes.indexWhere((n) => n.id == id);
    if (index != -1) {
      _notes[index].isPinned = !_notes[index].isPinned;
      notifyListeners();
    }
  }

  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  void setFilter(String filter) {
    _selectedFilter = filter;
    notifyListeners();
  }
}
