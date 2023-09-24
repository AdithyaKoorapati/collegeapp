import 'package:flutter/material.dart';
import 'bottomNavigationScreens/searchScreen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
          int _selectedIndex = 0;

          static const List<Widget> _widgetOptions = <Widget>[
              SearchScreen(),
              SearchScreen(),
              SearchScreen(),
              SearchScreen()


          ];

          void _onItemTapped(int index) {
            setState(() {
              _selectedIndex = index;
            });
          }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _widgetOptions.elementAt(_selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.home),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image_search),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xffCDBABAFF),
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: Color(0xff0E3C6E), // <-- This works for fixed


        onTap: _onItemTapped,
      ),
    );;
  }
}
