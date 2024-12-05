import 'package:flew_notes/screens/create.dart';
import 'package:flew_notes/screens/update.dart';
import 'package:flew_notes/src/api.dart';
import 'package:flutter/material.dart';

import '../src/note.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService _service = ApiService();
  List<Note> notes = [];

  // Fetch notları alacak fonksiyon
  Future<void> fetchNotes() async {
    List<dynamic> fetchedNotes = await _service.getNotes();
    List<Note> emptyList = [];
    for (var note in fetchedNotes) {
      emptyList
          .add(Note(note['id'], note['title'], note['body'], note['created']));
    }
    setState(() {
      notes = emptyList;
    });
  }

  Future<void> _deleteNote(id) async {
    await _service.deleteNote(id);
    fetchNotes();
  }

  // initState ile fetchNotes fonksiyonunu çağırıyoruz
  @override
  void initState() {
    super.initState();
    fetchNotes();
  }

  @override
  Widget build(BuildContext context) {
    fetchNotes();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notlarım'),
        actions: [
          IconButton(
              onPressed: () {
                fetchNotes();
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Create(
                      service: _service,
                    )),
          );
        },
        child: Icon(Icons.add),
      ),
      body: notes.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: () {
                return fetchNotes();
              },
              child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  // Her bir notu listeye ekliyoruz
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Update(
                                  note: notes[index],
                                  service: _service,
                                )),
                      );
                    },
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(notes[index].title),
                        Text(notes[index].body)
                      ],
                    ),
                    subtitle: Text(notes[index].created),
                    trailing: IconButton(
                        onPressed: () {
                          _deleteNote(notes[index].id);
                        },
                        icon: Icon(Icons.delete)),
                  );
                },
              ),
            ),
    );
  }
}
