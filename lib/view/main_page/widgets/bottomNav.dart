import 'package:flutter/material.dart';

//! To change the index value (BOTTOM NAV)
ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          
          currentIndex: newIndex,
          elevation: 0,
          onTap: (index) {
            indexChangeNotifier.value = index;
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red,
          selectedItemColor: const Color.fromARGB(255, 66, 112, 191),
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.black),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            

            BottomNavigationBarItem(icon: Icon(Icons.home_filled, size: 30, color: Colors.black,), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search_off_outlined, size: 30, color: Colors.black,), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.camera, size: 30, color: Colors.black,), label: 'Camera'),
            BottomNavigationBarItem(icon: Icon(Icons.video_file, size: 30, color: Colors.black,), label: 'Video'),
          ],
        );
      },
    );
  }
}
