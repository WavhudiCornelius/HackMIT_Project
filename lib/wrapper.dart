import 'package:flutter/material.dart';

import './Screens/home_screen.dart';
import './stepper.dart';
import './Screens/trending_screen.dart';
import './Widgets/custom_fab.dart';
import './constants.dart';

import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  final List<Widget> _screens = <Widget>[
    HomeScreen(),
    TrendingScreen(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => StepperDemo.init(username: "Pablo")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kDarkGrey,
        unselectedItemColor: kLightGrey,
        selectedItemColor: kWhite,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.home,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.trendingUp,
            ),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: CustomFAB(
          buttonColor: kPink,
          buttonSize: 70.0,
          iconColor: kWhite,
          iconSize: 36.0,
          onTap: () {
            _navigateToNextScreen(context);
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
