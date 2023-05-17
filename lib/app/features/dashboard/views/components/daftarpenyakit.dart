// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

import '../../../../constans/app_constants.dart';

class DaftarPenyakit extends StatelessWidget {
  DaftarPenyakit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        // drawer: NavigationBar(),
        appBar: AppBar(
            title: const Text('Daftar Penyakit'),
            backgroundColor: Colors.lightBlue),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                width: 350,
                height: 125,
                child: Container(
                  child: Center(child: Text('Daftar Penyakit')),
                  color: Colors.lightBlue,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 350,
                height: 125,
                child: Container(
                  child: Center(child: Text('Diagnosa')),
                  color: Colors.lightBlue,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 350,
                height: 125,
                child: Container(
                  child: Center(child: Text('Deteksi')),
                  color: Colors.lightBlue,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 350,
                height: 125,
                child: Container(
                  child: Center(child: Text('Dokter Terdekat')),
                  color: Colors.lightBlue,
                ),
              ),
            ],
          ),
        ),
      );

  Widget _button({
    required bool selected,
    required String label,
    required Function() onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
        ),
        style: ElevatedButton.styleFrom(
          primary: selected
              ? Theme.of(Get.context!).cardColor
              : Theme.of(Get.context!).canvasColor,
          onPrimary: selected ? kFontColorPallets[0] : kFontColorPallets[2],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
