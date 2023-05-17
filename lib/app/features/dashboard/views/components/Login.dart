import 'package:diagnosa_proyek3/app/features/dashboard/views/components/daftarpenyakit.dart';
import 'package:diagnosa_proyek3/app/features/dashboard/views/components/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/dashboard_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    Get.to(() => DashboardScreen());
                  },
                  child: Center(
                      child: Text("Masuk",
                          style: TextStyle(fontSize: 20, color: Colors.white))),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.lightBlue,
              elevation: 5,
              child: Container(
                height: 10,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    Get.to(() => Register());
                  },
                  child: Center(
                      child: Text("belum mempunyai aku? Register",
                          style: TextStyle(fontSize: 7, color: Colors.white))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
