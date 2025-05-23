import 'package:flutter/material.dart';
import 'package:travelbuddy/screen/add_place_screen.dart';
import 'package:travelbuddy/screen/profile_screen.dart';
import 'package:travelbuddy/screen/search_screen.dart';
import 'package:travelbuddy/utils/constans.dart';
import 'package:travelbuddy/widgets/custom_search_bar.dart';
import 'package:travelbuddy/widgets/place_card.dart';


class HomeScreen extends StatefulWidget {
  final ScrollController controller;
  
  const HomeScreen({super.key, 
  required this.controller
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  late List<Widget> _screens;
  //List screen
  final List<String> _titles = [
    'Treval Buddy ',
    'Search',
    'Add Place',
    'Settings',
  ];
  final List<Widget> _appBarScreens = [
    HomeScreen(controller: ScrollController()),
     SearchScreen(),
     AddPlaceScreen(),
     ProfileScreen(),
  ];


  @override
  void initState() {
    super.initState();
    _screens = [
      _buildHomeContent(),
      SearchScreen(),
      AddPlaceScreen(),
      ProfileScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  // Главное меню с прокрутом Place 
  Widget _buildHomeContent() {
    return Scrollbar(
      thumbVisibility: true,
      controller: widget.controller,
      child: SingleChildScrollView(
        controller: widget.controller,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchBar(),
           BoxSized,
            PlaceCard(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 5, 140, 150),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 5, 140, 150)
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), 
            label: 'Search',
            backgroundColor: Color.fromARGB(255, 14, 83, 95)
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.add_box_rounded), 
            label: 'Add',
            backgroundColor: Color.fromARGB(255, 6, 62, 107)
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'Profile',
            backgroundColor: Color.fromARGB(255, 5, 109, 150)
            ),
          
        ],
      ),
    );
    
  }
}

