import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Cart/CartScreen.dart';
import 'package:grocery_app/Explorer/ExploreScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

  static final List<Widget> _widgetOptions = <Widget>[
    const Text('Shop Page'),
    const ExploreScreen(),
    const CartScreen(),
    const Text('Favorite Page'),
    const Text('Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color(0x80E6EBF3),
              offset: Offset(0, 12),
              blurRadius: 18.5,
            ),
          ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.store_mall_directory_outlined,
                  ),
                  label: 'Shop',
                  backgroundColor: Colors.white,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search_rounded),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.shopping_cart),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.suit_heart),
                    label: 'Favorite',
                    backgroundColor: Colors.white),
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.person,
                    weight: 100,
                  ),
                  label: 'Account',
                ),
              ],
              currentIndex: _selectedIndex,
              showUnselectedLabels: true,
              unselectedItemColor: const Color(0xFF181725),
              iconSize: 24,
              selectedItemColor: const Color(0xFF53B175),
              backgroundColor: Colors.white,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
