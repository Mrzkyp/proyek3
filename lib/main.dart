<<<<<<< HEAD
=======
// ignore_for_file: prefer_const_constructors

>>>>>>> 74acfd7 (open camera)
import 'package:diagnosa_proyek3/app/features/dashboard/views/components/splashscreen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
    );
  }
}
