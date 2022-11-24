import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:mycatering/screen/inputlogin/auth/storage_services.dart';

class image_upload extends StatefulWidget {
  const image_upload({super.key});

  @override
  State<image_upload> createState() => _image_uploadState();
}

class _image_uploadState extends State<image_upload> {
  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    return Scaffold(
      body: Column(
        children: [
          // Center(
          //   child: ElevatedButton(
          //     child: const Text('upload'),
          //     onPressed: () async {
          //       final result = await FilePicker.platform.pickFiles(
          //           allowMultiple: false,
          //           type: FileType.custom,
          //           allowedExtensions: ['png', 'jpg']);
          //       final path = result!.files.single.path;
          //       final fileName = result.files.single.name;

          //       storage
          //           .uploadFile(path!, fileName)
          //           .then((value) => print('done'));
          //     },
          //   ),
          // ),
          FutureBuilder(
            future: storage.donwloadURL('cake-1.png'),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData) {
                return SizedBox(
                  width: 300,
                  height: 250,
                  child: Image.network(
                    snapshot.data!,
                    fit: BoxFit.cover,
                  ),
                );
              }
              if (snapshot.connectionState == ConnectionState.waiting ||
                  !snapshot.hasData) {
                return const CircularProgressIndicator();
              }
              return Container();
            },
          )
        ],
      ),
    );
  }
}
