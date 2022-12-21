import 'package:flutter/material.dart';
import 'package:uas_mobile_124200066/convert/hasilconvertEUR.dart';
import 'package:uas_mobile_124200066/convert/hasilconvertMYR.dart';
import 'package:uas_mobile_124200066/convert/hasilconvertTHB.dart';
import 'package:uas_mobile_124200066/convert/hasilconvertUSD.dart';
import 'package:uas_mobile_124200066/convert/hasilconvertWON.dart';
import 'package:uas_mobile_124200066/convert/hasilconvertYEN.dart';

class konversi extends StatefulWidget {
  const konversi({Key? key}) : super(key: key);
  @override
  State<konversi> createState() => _konversiState();
}

class _konversiState extends State<konversi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 127, 203, 151),
        title: Text("KONVERSI IDR KE MATA UANG ASING (Rp.1,000,000)")
      ),
      backgroundColor: Color.fromARGB(255, 226, 254, 248),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(100,0,20,0),
              child: Row(
                children: [
                  Icon(Icons.list, size: 50, color: Colors.black,),
                  Text("LIST KONVERSI", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),)
                ],
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SizedBox(
                width: 1500,
                height: 50,
                
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 1, 0, 87),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return hasilconvertmatauangUSD();
                    }));
                  },
                  child: Text('Konversi IDR ke USD'),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SizedBox(
                width: 1500,
                height: 50,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 1, 0, 87),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return hasilconvertmatauangEUR();
                    }));
                  },
                  child: Text('Konversi IDR ke EUR'),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SizedBox(
                width: 1500,
                height: 50,
                
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 1, 0, 87),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return hasilconvertmatauangWON();
                    }));
                  },
                  child: Text('Konversi IDR ke WON'),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SizedBox(
                width: 1500,
                height: 50,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 1, 0, 87),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return hasilconvertmatauangYEN();
                    }));
                  },
                  child: Text('Konversi IDR ke YEN'),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SizedBox(
                width: 1500,
                height: 50,
                
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 1, 0, 87),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return hasilconvertmatauangTHB();
                    }));
                  },
                  child: Text('Konversi IDR ke THB'),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SizedBox(
                width: 1500,
                height: 50,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 1, 0, 87),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return hasilconvertmatauangMYR();
                    }));
                  },
                  child: Text('Konversi IDR ke MYR'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
