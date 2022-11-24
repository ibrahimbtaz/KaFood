import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'dart:io';

class Storage {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;  
  Future<void> uploadFile(
    String filepath,
    String filename,
  ) async {
    File file = File(filepath);
    try {
      await storage.ref('image/$filename').putFile(file);
    } on firebase_core.FirebaseException catch (e) {
      print(e);
    }
  }

  Future<firebase_storage.ListResult> listFiles() async {
    firebase_storage.ListResult results =
        await storage.ref('test').listAll();

    results.items.forEach((firebase_storage.Reference ref) {
      print('Found file: $ref');
    });

    return results;
  }

  Future<String> donwloadURL(String imageName) async {
    String donwloadURL =
        await storage.ref('image/$imageName').getDownloadURL();

    return donwloadURL;
  }
}
