import 'package:flutter/material.dart';

import './Screens/home_screen.dart';
import './Screens/trending_screen.dart';

import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Wrapper extends StatefulWidget {
  // Wrapper({Key key, this.title}) : super(key: key);

  // final String title;

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  final List<Widget> _screens = <Widget>[HomeScreen(), TrendingScreen()];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text(widget.title),
          ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.home,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.trendingUp,
            ),
            title: Text(
              'Settings',
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
