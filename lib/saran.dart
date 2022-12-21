import 'package:flutter/material.dart';

class saran extends StatefulWidget {
  const saran({Key? key}) : super(key: key);

  @override
  State<saran> createState() => _saranState();
}

class _saranState extends State<saran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center( 
          child: Text("Kesan Pesan"),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SizedBox(
                width: 1500,
                height: 50,
                child:Text('Kesan'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
              border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(0)
          ),
          padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
          margin: EdgeInsets.all(5),
          width: double.infinity,
          height: 200,
          child: SafeArea(
            child: Text("Untuk pemrograman aplikasi mobile ada beberapa materi yang sulit dipahami seperti pada materi database yang menurut saya cukup sulit, namun untuk materi lain dapat cukup dipahami.", style: TextStyle(color: Colors.black, fontSize: 15),),
          ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SizedBox(
                width: 1500,
                height: 50,
                child:Text('Pesan'),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
              border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(0)
          ),
          padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
          margin: EdgeInsets.all(5),
          width: double.infinity,
          height: 200,
          child: SafeArea(
            child: Text("Semoga ilmu yang didapatkan berkah, dan semoga pak bagus diberikan kelancaran untuk segala hal Aamin....", style: TextStyle(color: Colors.black, fontSize: 15),),
          ),
            ),
          ],
        ),
      ),
    );
  }
}