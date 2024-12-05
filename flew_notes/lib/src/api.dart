import 'package:flew_notes/src/note.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiUrls {
  // API Base URL
  static const String baseUrl =
      'http://127.0.0.1:8000'; // Backend sunucunuzun URL'si

  // Endpoint'ler
  static const String notesEndpoint = '$baseUrl/notes/';
  static const String noteDetailEndpoint =
      '$baseUrl/notes/{id}/'; // {id} dinamik olacak
}

class ApiService {
  // GET isteği - Tüm notları al
  Future<List<dynamic>> getNotes() async {
    try {
      final response = await http.get(Uri.parse(ApiUrls.notesEndpoint));

      if (response.statusCode == 200) {
        // Başarılı yanıt alındı
        print(json.decode(utf8.decode(response.bodyBytes)));
        return json.decode(utf8.decode(response.bodyBytes));
      } else {
        throw Exception('Başarısız GET isteği: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Hata: $e');
    }
  }

  // GET isteği - Belirli bir notun detaylarını al
  Future<Map<String, dynamic>> getNoteDetail(int id) async {
    try {
      final response = await http.get(Uri.parse(
          ApiUrls.noteDetailEndpoint.replaceFirst("{id}", id.toString())));

      if (response.statusCode == 200) {
        // Başarılı yanıt alındı
        return json.decode(response.body);
      } else {
        throw Exception('Başarısız GET isteği: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Hata: $e');
    }
  }

  // POST isteği - Yeni bir not oluştur
  Future<Map<String, dynamic>> createNote(Note noteData) async {
    try {
      final response = await http.post(
        Uri.parse(ApiUrls.notesEndpoint),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(noteData),
      );

      if (response.statusCode == 201) {
        // Başarılı yanıt alındı (201 Created)
        return json.decode(response.body);
      } else {
        throw Exception('Başarısız POST isteği: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Hata: $e');
    }
  }

  // PUT isteği - Bir notu güncelle
  Future<Map<String, dynamic>> updateNote(int id, Note updatedNoteData) async {
    try {
      final response = await http.put(
        Uri.parse(
            ApiUrls.noteDetailEndpoint.replaceFirst("{id}", id.toString())),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(updatedNoteData),
      );

      if (response.statusCode == 200) {
        // Başarılı yanıt alındı
        return json.decode(response.body);
      } else {
        throw Exception('Başarısız PUT isteği: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Hata: $e');
    }
  }

  // DELETE isteği - Bir notu sil
  Future<void> deleteNote(int id) async {
    try {
      final response = await http.delete(
        Uri.parse(
            ApiUrls.noteDetailEndpoint.replaceFirst("{id}", id.toString())),
      );

      if (response.statusCode == 204) {
        // Başarılı yanıt alındı (204 No Content)
        return;
      } else {
        throw Exception('Başarısız DELETE isteği: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Hata: $e');
    }
  }
}
