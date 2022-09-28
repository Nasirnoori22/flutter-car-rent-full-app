import 'package:bottom_bar/bottom_bar.dart';
import 'package:car_rent/home_page.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _currentPage = 0;
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          HomeScreen(),
          Container(color: Colors.red),
          Container(color: Colors.greenAccent.shade700),
          Container(color: Colors.orange),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomBar(
          selectedIndex: _currentPage,
          onTap: (int index) {
            _pageController.jumpToPage(index);
            setState(() => _currentPage = index);
          },
          items: <BottomBarItem>[
            BottomBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                activeColor: Colors.greenAccent.shade700),
            BottomBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorites'),
              activeColor: Colors.greenAccent.shade700,
            ),
            BottomBarItem(
              icon: Icon(Icons.person),
              title: Text('Account'),
              activeColor: Colors.greenAccent.shade700,
            ),
            BottomBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
