import 'package:diagnosa_proyek3/app/features/dashboard/views/components/Login.dart';
import 'package:diagnosa_proyek3/app/features/dashboard/views/components/daftarpenyakit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/dashboard_screen.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(9),
        color: Colors.lightBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(Icons.person, size: 40, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "selamat Datang",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(
                  Icons.person,
                  size: 40,
                ),
                hintText: "Username",
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(
                  Icons.person,
                  size: 40,
                ),
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  size: 40,
                ),
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.white),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.lightBlue,
              elevation: 5,
              child: Container(
                height: 50,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    Get.to(() => Login());
                  },
                  child: Center(
<<<<<<< HEAD
                      child: Text("Register",
=======
                      child: Text("Buat Akun",
>>>>>>> 74acfd7 (open camera)
                          style: TextStyle(fontSize: 20, color: Colors.white))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
