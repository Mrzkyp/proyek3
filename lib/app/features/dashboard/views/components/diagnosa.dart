<<<<<<< HEAD
import 'package:flutter/material.dart';
=======
import 'package:diagnosa_proyek3/app/features/dashboard/views/components/daftarpenyakit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
>>>>>>> 74acfd7 (open camera)

class Diagnosa extends StatefulWidget {
  const Diagnosa({super.key});

  @override
  State<Diagnosa> createState() => _DiagnosaState();
}

class _DiagnosaState extends State<Diagnosa> {
<<<<<<< HEAD
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
=======
  List<Map> categories = [
    {"name": "Kulit memerah", "isChecked": false},
    {"name": "Kulit seperti bersisik", "isChecked": false},
    {"name": "Kulit terasa gatal tidak tertahan", "isChecked": false},
    {"name": "Kulit gatal pada malam hari", "isChecked": false},
    {"name": "Tumbuh benjolan di permukaan kulit", "isChecked": false},
    {"name": "tumbuh benjolan merah kecoklatan", "isChecked": false},
    {"name": "Kulit meradang", "isChecked": false},
    {"name": "kulit terasa perih", "isChecked": false},
    {
      "name": "Gatal dibagian selangkangan kaki/ketiak/leher/dsb",
      "isChecked": false
    },
    {"name": "Tumbuh benjolan merah", "isChecked": false},
    {"name": "Tumbuh benjolan kecil agak memutih", "isChecked": false},
    {"name": "Kulit terasa berminyak", "isChecked": false},
    {"name": "Rasa gatal yang panas", "isChecked": false},
    {"name": "Rasa gatal yang perih", "isChecked": false},
    {"name": "Tumbuh benjolan berisi nanah", "isChecked": false},
    {"name": "Ruam", "isChecked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarZ(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pilih Gejala yang anda rasakan :",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.lightBlue, thickness: 1),
              SizedBox(height: 10),
              Column(
                  children: categories.map((favorite) {
                return CheckboxListTile(
                    activeColor: Colors.lightBlue,
                    checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    title: Text(favorite["name"]),
                    value: favorite['isChecked'],
                    onChanged: (val) {
                      setState(() {
                        favorite['isChecked'] = val;
                      });
                    });
              }).toList()),
              SizedBox(height: 10),
              Card(
                color: Colors.lightBlue,
                elevation: 5,
                child: Container(
                  height: 30,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      Get.to(() => DaftarPenyakit());
                    },
                    child: Center(
                        child: Text("Selanjutnya",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white))),
                  ),
                ),
              )
            ],
          ),
        ),
>>>>>>> 74acfd7 (open camera)
      ),
    );
  }
}
<<<<<<< HEAD
=======

AppBar _appBarZ() {
  return AppBar(
    title: Column(
      children: [Text("Diagnosa")],
    ),
    centerTitle: true,
  );
}
>>>>>>> 74acfd7 (open camera)
