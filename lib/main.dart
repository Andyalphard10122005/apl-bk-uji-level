import 'package:apl_bk_uji_level/home.dart';
import 'package:apl_bk_uji_level/login.dart';
import 'package:apl_bk_uji_level/splash.dart';
import 'history.dart';
import 'package:apl_bk_uji_level/profile.dart';
import 'package:flutter/material.dart';
import 'package:apl_bk_uji_level/input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final tabs = [history(), home_page(), Profile()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 37,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                color: Color(0xFF00109D),
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xFF00109D),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color(0xFF00109D),
              ),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Color(0xFF00109D),
          unselectedItemColor: Color(0xFF00109D),
        ),
      ),
    );
  }
}
