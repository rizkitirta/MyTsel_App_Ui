import 'package:flutter/material.dart';

BottomNavigationBar BottomNav() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Beranda'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.lock_clock),
          title: Text('Riwayat'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          title: Text('Bantuan'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          title: Text('Inbox'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Akun'),
        ),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
    );
  }