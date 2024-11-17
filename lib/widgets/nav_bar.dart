import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
  });

  void _onItemTapped(BuildContext context, int index) {
    final routes = ['/home', '/tree', '/store',];

    // Check if the current route is the same as the tapped route
    if (ModalRoute.of(context)?.settings.name != routes[index]) {
      Navigator.pushNamed(context, routes[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.nature_outlined),
          label: 'Tree Health',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'Store',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      backgroundColor: Colors.green,
      onTap: (index) => _onItemTapped(context, index),
    );
  }
}
