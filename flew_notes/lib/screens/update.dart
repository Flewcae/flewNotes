import 'package:flew_notes/src/api.dart';
import 'package:flew_notes/src/note.dart';
import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  final ApiService _service;
  final Note note;

  Update({required ApiService service, required this.note})
      : _service = service;
  @override
  _UpdateState createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  // TextEditingController'lar
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  void initState() {
    setState(() {
      titleController = TextEditingController(text: widget.note.title);
      contentController = TextEditingController(text: widget.note.body);
    });

    super.initState();
  }

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

    widget._service.updateNote(widget.note.id, Note(0, title, content, ""));
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
