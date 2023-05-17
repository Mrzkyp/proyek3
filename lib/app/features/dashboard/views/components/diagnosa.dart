import 'package:flutter/material.dart';

class Diagnosa extends StatefulWidget {
  const Diagnosa({super.key});

  @override
  State<Diagnosa> createState() => _DiagnosaState();
}

class _DiagnosaState extends State<Diagnosa> {
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
            ]),
      ),
    );
  }
}
