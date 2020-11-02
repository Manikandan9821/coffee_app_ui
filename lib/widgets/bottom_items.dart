import 'package:flutter/material.dart';

class BottomItems extends StatelessWidget {
  final int selectedIndex;
  BottomItems(this.selectedIndex);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      selectedItemColor: Colors.amber,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Text('Orders'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('Rewards'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_vert),
          title: Text('More'),
        ),
      ],
    );
  }
}
