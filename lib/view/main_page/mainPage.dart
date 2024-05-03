// ignore_for_file: public_member_api_docs, sort_constructors_first
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
    return Scaffold(
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return _pages[index];
        },
        child: const BottomNavigation(),
        //child: const BotNav(),
      ),
    );
  }
}

class BotNav extends StatelessWidget {
  const BotNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
        
        color: Colors.indigo,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TBotNav(icons: Icons.home),
          TBotNav(icons: Icons.search),
          TBotNav(icons: Icons.camera),
          TBotNav(icons: Icons.video_settings),
          TBotNav(icons: Icons.person_2),
          
          
        ],
      ),
    );
  }
}

class TBotNav extends StatelessWidget {
  const TBotNav({
    Key? key,
    required this.icons,
     this.size = 30,
     this.iconColor = Colors.white ,
  }) : super(key: key);

  final IconData icons;
  final double size;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icons,
        size: size,
        color: iconColor,
      ),
    );
  }
}
