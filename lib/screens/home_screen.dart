import 'package:fashion_ecommerce_ui_clone/pages/home_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _pages = const [
    HomePage(),
    Text("Favorite Page"),
    Text("Card Page"),
    Text("Profile Page")
  ];

  final List<BottomNavigationBarItem> _items = const [
    BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
    BottomNavigationBarItem(
        icon: Icon(Icons.favorite_border), label: "Favorite"),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Cart"),
    BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          unselectedItemColor: Colors.black54,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: _items,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
