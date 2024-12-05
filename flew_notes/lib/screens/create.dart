import 'package:flew_notes/src/api.dart';
import 'package:flew_notes/src/note.dart';
import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  final ApiService _service;

  Create({required ApiService service}) : _service = service;
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  // TextEditingController'lar
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  @override
  void dispose() {
    // Controller'ları belleği temizlemek için dispose ediyoruz.
    titleController.dispose();
    contentController.dispose();
    super.dispose();
  }

  void submitData() {
    // Kullanıcı tarafından girilen veriler
    String title = titleController.text;
    String content = contentController.text;

    widget._service.createNote(Note(0, title, content, ""));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Oluştur'), actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton.icon(
              onPressed: submitData,
              icon: Icon(Icons.save),
              label: Text("Kaydet")),
        )
      ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: titleController, // Title için controller
              decoration: InputDecoration(
                hintText: 'Başlık',
                border: InputBorder.none, // Şeffaf input
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: TextField(
                controller: contentController, // Content için controller
                maxLines: null, // Çok satırlı alan
                decoration: InputDecoration(
                  hintText: 'Yazmaya başla...',
                  border: InputBorder.none, // Şeffaf input
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
