import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
class BottomNavBar extends StatefulWidget {
  final ValueChanged<int> onTabTapped;
  const BottomNavBar({super.key, required this.onTabTapped});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBottomNavigationBar(

        icons: const [
          Icons.home,
          Icons.search,
          Icons.add,
          Icons.person
        ],
        activeIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            widget.onTabTapped(index); // Notify the parent about the tapped index
          });
        },
      ),
    );
  }
}
