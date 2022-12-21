import 'package:flutter/material.dart';
import 'dart:io';

class persegi extends StatefulWidget {
  _persegiState createState() => _persegiState();
}

class _persegiState extends State<persegi> {
  final txtsisi = TextEditingController();

  String resultLuas = '';
  String resultKeliling = ''; 

  getTextInputData() {
    setState(() {
      var sisi = int.parse(txtsisi.text);
      var luas = sisi * sisi;
      var keliling = sisi + sisi + sisi + sisi;
      resultLuas = luas.toString();
      resultKeliling = keliling.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Persegi"),
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
                  controller: txtsisi,
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Sisi Persegi',
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black87),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color.fromARGB(255, 4, 0, 255))
                  ),
                    ),
                  )
              ),
              ElevatedButton(
                onPressed: getTextInputData,
                child: Text('Hasil'),
              ),
              SizedBox(height: 20,),
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Hasil Luas Persegi = $resultLuas",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                         Text("Hasil Keliling Persegi = $resultKeliling",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
        ));
  }
}