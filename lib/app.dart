import 'package:flutter/material.dart';
import 'package:ba_flutter/pages/contact_page.dart';
import 'package:ba_flutter/pages/home_page.dart';
import 'package:ba_flutter/pages/drinks_page.dart';


class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0; //Index der Bottom NavigationBar

  final _page1 = GlobalKey<NavigatorState>(); //Definieren des Keys für page1
  final _page2 = GlobalKey<NavigatorState>(); //Definieren des Keys für page2


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex, 
        children: <Widget>[
          Navigator(
            key: _page1, //Verwenden des Keys
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => HomePage(),
            ),
          ),
          Navigator(
            key: _page2, //Verwenden des Keys
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => ContactPage(),
            ),
          ),
        ],
      ),
        bottomNavigationBar: BottomNavigationBar( //BottomNavigationBar
          backgroundColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'), //Definieren der Option
            BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: 'Info'), //Definieren der Option
          ],
      ),
    );
  }
}