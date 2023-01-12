// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import '../views/home.dart';
import '../views/search.dart';
import '../views/library.dart';
import '../views/profile.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: _selectedTab == 0
                  ? Icon(Icons.home)
                  : Icon(Icons.home_outlined),
              label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: _selectedTab == 2
                  ? Icon(Icons.library_music)
                  : Icon(Icons.library_music_outlined),
              label: 'Your Library'),
          BottomNavigationBarItem(
              icon: _selectedTab == 3
                  ? Icon(Icons.person)
                  : Icon(Icons.person_outline),
              label: 'Profile'),
        ],
      ),
      // ignore: prefer_const_constructors
      body: Stack(children: [
        renderView(
          0,
          HomeView(),
        ),
        renderView(
          1,
          SearchView(),
        ),
        renderView(
          2,
          LibraryView(),
        ),
        renderView(
          3,
          ProfileView(),
        ),
      ]),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
