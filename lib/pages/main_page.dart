import 'package:flutter/material.dart';
import 'package:flutterapp_univision/pages/home_page.dart';
import 'package:flutterapp_univision/pages/play_page.dart';
import 'package:flutterapp_univision/pages/profil_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    PlayPage(),
    ProfilPage()
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor:  Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items:  const [
          BottomNavigationBarItem(
            label: 'Apps',
            icon: Icon(Icons.home, size: 27),
          ),

          BottomNavigationBarItem(
            label: 'Play',
            /*icon: Image.asset(
              'images/icons8-youtube-music-64.png',
              width: 50,
            ),*/
            icon: Icon(Icons.play_circle_outlined, size: 50),
          ),



          BottomNavigationBarItem(
            label: 'Person',
            icon: Icon(Icons.person,size: 27),
          ),
        ],
      ),
    );
  }
}
