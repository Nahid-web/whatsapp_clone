import 'dart:convert';
import 'dart:io';

import 'package:cloudinary_flutter/cloudinary_object.dart';
import 'package:cloudinary_url_gen/cloudinary.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:whatsapp_clone/common/config/app_config.dart';

/* import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final commonFirebaseStoreageRepository = Provider(
  (ref) => CommonFirebaseStorageRepository(
      firebaseStorage: FirebaseStorage.instance),
);

class CommonFirebaseStorageRepository {
  final FirebaseStorage firebaseStorage;

  CommonFirebaseStorageRepository({required this.firebaseStorage});

  Future<String> storeFileToFirebase(String ref, File file) async {
    UploadTask uploadTask = firebaseStorage.ref().child(ref).putFile(file);
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }
} */

final commonFirebaseStoreageRepository = Provider(
  (ref) => CommonFirebaseStorageRepository(
    cloudinary:
        CloudinaryObject.fromCloudName(cloudName: CloudinaryConfig.cloudName),
  ),
);

class CommonFirebaseStorageRepository {
  final Cloudinary cloudinary;
  CommonFirebaseStorageRepository({
    required this.cloudinary,
  });

  Future<String> storeFileToFirebase(String ref, File file) async {
    String downloadUrl = '';
    final url = Uri.parse(CloudinaryConfig.uploadImageUrl);
    final request = http.MultipartRequest('POST', url);

    request.fields['upload_preset'] = CloudinaryConfig.uploadPreset;
    request.files.add(await http.MultipartFile.fromPath('file', file.path));

    try {
      final response = await request.send();

      if (true) {
        final responseData = await response.stream.bytesToString();
        final jsonData = jsonDecode(responseData);
        print('response is ${responseData}');
        String downloadUrl = jsonData['secure_url'];
        downloadUrl = downloadUrl;
      } else {}
    } catch (e) {}

    return downloadUrl;
  }
}
