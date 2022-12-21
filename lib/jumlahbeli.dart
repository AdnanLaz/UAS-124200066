import 'package:flutter/material.dart';
import 'dart:io';

class jumlahbeli extends StatefulWidget {
  _jumlahbeliState createState() => _jumlahbeliState();
}

class _jumlahbeliState extends State<jumlahbeli> {
  final txtsisialas = TextEditingController();
  final txtsisi = TextEditingController();
  final txttinggi = TextEditingController();

  String resultLuas = '';
  String resultKeliling = '';

  getTextInputData() {
    setState(() {
      var sisialas = int.parse(txtsisialas.text);
      var sisib = int.parse(txtsisi.text);
      var tinggi = int.parse(txttinggi.text);
      var luas = (sisialas * tinggi) / 2;
      var keliling = sisialas + sisib + sisib;
      resultLuas = luas.toString();
      resultKeliling = keliling.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Segitiga sama sisi"),
        ),
        backgroundColor: Color.fromARGB(255, 154, 210, 255),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 1000,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txtsisialas,
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Alas Segitiga'
                      ,
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black87),
                      ),
                      focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color.fromARGB(255, 4, 0, 255))
                      ),
                      ),
                  )),
              Container(
                  width: 1000,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txtsisi,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Sisi Segitiga'
                    ,
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black87),
                      ),
                      focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color.fromARGB(255, 4, 0, 255))
                      ),
                    ),
                  )),
                Container(
                  width: 1000,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txttinggi,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Tinggi Segitiga'
                    ,
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black87),
                      ),
                      focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color.fromARGB(255, 4, 0, 255))
                      ),
                    ),
                  )),
                  SizedBox(height: 20,),
              ElevatedButton(
                onPressed: getTextInputData,
                child: Text('Hitung'),
              ),
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Hasil Luas Segitiga = $resultLuas",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                         Text("Hasil Keliling Segitiga = $resultKeliling",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
        ));
  }
}