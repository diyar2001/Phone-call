import 'package:flutter/material.dart';
import 'call_log.dart';
import 'favourite.dart';
import 'allcontacts.dart';
import 'emergency.dart';
class Tabviwe extends StatefulWidget {
  const Tabviwe({super.key});

  @override
  State<Tabviwe> createState() => _TabviweState();
}

class _TabviweState extends State<Tabviwe> {
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    final baritems = [
      BottomNavigationBarItem(icon: Icon(Icons.call), label: 'tab1'),
      BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'tab2'),
      BottomNavigationBarItem(icon: Icon(Icons.star),label: 'tab3'),
      BottomNavigationBarItem(icon: Icon(Icons.emergency,color:Color.fromARGB(255, 201, 33, 33),),label:'tab4'),
    ];

    final tabpages = [CallLog(), Allcontacts(),Favorite(),Emergency()];

    assert(baritems.length == tabpages.length);
    return Scaffold(
        body: tabpages[_currentindex],
        bottomNavigationBar:  (BottomNavigationBar(
          elevation: 2,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          iconSize: 40,
              items: baritems,
              selectedItemColor: Color.fromARGB(255, 28, 174, 129),
              currentIndex: _currentindex,
              type: BottomNavigationBarType.fixed,
              onTap: ((int index) {
                setState(() {
                  _currentindex = index;
                });
              }),
            )));
  }
}
