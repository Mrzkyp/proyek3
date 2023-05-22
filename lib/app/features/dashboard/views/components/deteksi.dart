import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Deteksi extends StatefulWidget {
  Deteksi({super.key});

  @override
  State<Deteksi> createState() => _DeteksiState();
}

class _DeteksiState extends State<Deteksi> {
  File? image;
  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? imagePicked =
        await _picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarZ(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              image != null
                  ? Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Image.file(
                        image!,
                        fit: BoxFit.cover,
                      ))
                  : Container(),
              const Text(
                "Silahkan unggah Foto kondisi kulit anda :",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.lightBlue, thickness: 1),
              SizedBox(height: 10),
              Column(children: [
                SizedBox(
                  width: 400,
                  height: 150,
                  child: Container(
                    child: Center(child: Text('Daftar Penyakit')),
                    color: Colors.lightBlue,
                  ),
                ),
              ]),
              SizedBox(height: 25),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
                onPressed: () async {
                  await getImage();
                },
                child: Text(
                  'Buka Galeri',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Column(children: [
                SizedBox(
                  width: 400,
                  height: 150,
                  child: Container(
                    color: Colors.lightBlue,
                    child: Center(child: Text('Daftar Penyakit')),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBarZ() {
    return AppBar(
      title: Column(
        children: [Text("Diagnosa")],
      ),
      centerTitle: true,
    );
  }
}
