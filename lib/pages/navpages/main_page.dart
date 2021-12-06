import 'package:flutter/material.dart';

import './bar_item_page.dart';
import '../home_page.dart';
import './my_page.dart';
import './search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), BarItemPage(), SearchPage(), MyPage()];

  int _currentIndex = 0;
  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                title: Text('Home'), icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                title: Text('Bar'), icon: Icon(Icons.bar_chart)),
            BottomNavigationBarItem(
                title: Text('Search'), icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                title: Text('My'), icon: Icon(Icons.person)),
          ],
        ));
  }
}
