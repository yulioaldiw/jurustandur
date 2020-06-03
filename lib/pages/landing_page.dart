import 'package:flutter/material.dart';
import 'package:jurustani/pages/perlengkapan_page.dart';
import 'package:jurustani/pages/tutorial_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;

  List<Widget> _container = [
    TutorialPage(),
    PerlengkapanPage(),
    Text('Halaman Favorit'),
    Text('Halaman Profil'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _container[_bottomNavCurrentIndex]),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildBottomNavigation() {
    return new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.assignment,
              color: Colors.green,
            ),
            icon: new Icon(
              Icons.assignment,
              color: Colors.grey,
            ),
            title: new Text('Tutorial'),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.build,
              color: Colors.green,
            ),
            icon: new Icon(
              Icons.build,
              color: Colors.grey,
            ),
            title: new Text('Perlengkapan'),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.favorite,
              color: Colors.green,
            ),
            icon: new Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            title: new Text('Favorit'),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: Colors.green,
            ),
            icon: new Icon(
              Icons.person,
              color: Colors.grey,
            ),
            title: new Text('Profil'),
          ),
        ]);
  }
}
