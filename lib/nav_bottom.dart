import 'package:flutter/material.dart';
import 'package:uas_mobile_124200066/saran.dart';
import 'profile.dart';
import 'halama_utama.dart';

class Navigasi extends StatefulWidget {
  
  @override
  _NavigasiState createState() => _NavigasiState();
}


class _NavigasiState extends State<Navigasi> {
  @override

  int _SelectedIndex = 0;
  void _onNavBarTapped (int index){
  setState((){
    _SelectedIndex = index;
  });
}
  
  Widget build(BuildContext context) {
    
    final _listhalaman = <Widget>[
      MainScreen(),
      saran(),
    ];

    final _bottomNavigasiItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
              icon: new Icon(Icons.home,),
              label: 'Halaman Utama'
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.info),
              label: 'Saran',
          ),
    ];

    final _bottomNavbar = BottomNavigationBar(
      items: _bottomNavigasiItems,
      currentIndex: _SelectedIndex,
       backgroundColor: Color.fromARGB(255, 88, 79, 79),
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.white70,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: _listhalaman[_SelectedIndex],
      ),
      bottomNavigationBar: _bottomNavbar,
    );
    
  }
}

