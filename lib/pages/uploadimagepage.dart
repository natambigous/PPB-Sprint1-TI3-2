import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class UploadImagePage extends StatefulWidget {
  @override
  _UploadImagePageState createState() => _UploadImagePageState();
}

class _UploadImagePageState extends State<UploadImagePage> {
  File? _image;
  final picker = ImagePicker();
  final FirebaseStorage storage = FirebaseStorage.instance;
  String? _uploadedFileURL;

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future uploadImage() async {
    if (_image == null) return;

    String fileName = basename(_image!.path);
    Reference storageRef = storage.ref().child('uploads/$fileName');

    try {
      await storageRef.putFile(_image!);
      String downloadURL = await storageRef.getDownloadURL();
      setState(() {
        _uploadedFileURL = downloadURL;
      });
      print('Upload success: $downloadURL');
    } catch (e) {
      print('Error occurred while uploading image: $e');
    }
  }

  Future deleteImage() async {
    if (_uploadedFileURL == null) return;

    try {
      await FirebaseStorage.instance.refFromURL(_uploadedFileURL!).delete();
      setState(() {
        _image = null;
        _uploadedFileURL = null;
      });
      print('Delete success');
    } catch (e) {
      print('Error occurred while deleting image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Image to Firebase'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null
                ? Text('No image selected.')
                : Image.file(_image!),
            SizedBox(height: 20),
            _uploadedFileURL != null
                ? Image.network(_uploadedFileURL!)
                : Container(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: getImage,
                  child: Text('Pick Image'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _image != null ? uploadImage : null,
                  child: Text('Upload Image'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _uploadedFileURL != null ? deleteImage : null,
                  child: Text('Delete Image'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
