import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottomnavigation extends StatelessWidget {
  const Bottomnavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.ice_skating), label: "date"),
      BottomNavigationBarItem(icon: Icon(Icons.ice_skating), label: "date")
    ]);
  }
}
