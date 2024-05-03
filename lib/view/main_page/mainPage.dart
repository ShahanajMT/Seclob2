import 'package:flutter/material.dart';
import 'package:seclob_2/view/Home/home_page.dart';
import 'package:seclob_2/view/main_page/widgets/bottomNav.dart';
import 'package:seclob_2/view/serach/search_pages.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return _pages[index];
        },
        child: const BottomNavigation(),
      ),
    );
  }
}
