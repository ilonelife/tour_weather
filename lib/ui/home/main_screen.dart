import 'package:flutter/material.dart';
import 'package:tour_weather/ui/account/account_screen.dart';
import 'package:tour_weather/ui/guide/guide_screen.dart';
import 'package:tour_weather/ui/survey/survey_screen.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _screens = [
    HomeScreen(),
    const GuideScreen(),
    const SurveyScreen(),
    const AccountScreen(),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.kayaking_outlined), label: 'Tour'),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined), label: 'Guide'),
          BottomNavigationBarItem(
              icon: Icon(Icons.poll_outlined), label: 'Survey'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: 'Account'),
        ],
      ),
    );
  }
}
