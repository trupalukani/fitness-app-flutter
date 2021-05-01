import 'package:dfit/prof_screen.dart';
import 'package:dfit/search_screen.dart';
import 'package:dfit/user.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentIndex = 0;
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Body(),
    Search(),
    MyProfile(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [..._widgetOptions],
      ),
      bottomNavigationBar: Container(
        color: Colors.yellow[100],
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          child: BottomNavigationBar(
            backgroundColor: Colors.brown[800],
            iconSize: 35,
            selectedIconTheme: IconThemeData(color: Colors.yellow[100]),
            unselectedIconTheme: IconThemeData(color: Colors.white),
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Icon(Icons.home),
                ),
                title: Text(
                  "Home",
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'AkayaTelivigala',
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Icon(Icons.search),
                ),
                title: Text(
                  "Search",
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'AkayaTelivigala',
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Icon(Icons.person),
                ),
                title: Text(
                  "Profile",
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'AkayaTelivigala',
                  ),
                ),
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTap,
          ),
        ),
      ),
    );
  }
}
