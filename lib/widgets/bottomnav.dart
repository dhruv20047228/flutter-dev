import 'package:flutter/material.dart';
import 'AlertDia.dart';
import 'dissmissible.dart';
import 'rowsncol.dart';
import 'snackbar.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedIndex = 0;
  final PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          SnackBarWidget(),
          AlertDialogue(),
          DismissibleWidget(),
          RowsAndColumns(), // Fixed naming
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex, // Added currentIndex
        onTap: onTapped, // Added onTap callback
        type: BottomNavigationBarType.fixed, // Added for 4+ items
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}