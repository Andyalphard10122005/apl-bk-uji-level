import 'package:apl_bk_uji_level/coba.dart';
import 'package:apl_bk_uji_level/history.dart';
import 'package:apl_bk_uji_level/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _currentIndex = 0;

  final tabs = [history(), home_page(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}