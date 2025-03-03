// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:cunning_document_scanner/cunning_document_scanner.dart';

Future<List<FFUploadedFile>?> takeScanner() async {
  // Add your function code here!
  try {
    // Panggil scanner untuk mengambil gambar dokumen
    List<String>? pictures = await CunningDocumentScanner.getPictures();

    // Jika hasilnya kosong, return null
    if (pictures == null || pictures.isEmpty) {
      return null;
    }

    // Konversi hasil path gambar menjadi List<FFUploadedFile>
    List<FFUploadedFile> uploadedFiles = pictures.map((path) {
      File file = File(path);
      return FFUploadedFile(
        name: path.split('/').last, // Mengambil nama file dari path
        bytes: file.readAsBytesSync(), // Membaca file sebagai bytes
      );
    }).toList();

    return uploadedFiles;
  } catch (e) {
    print('Error scanning document: $e');
    return null;
  }
}
