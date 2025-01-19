import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hendras_app/pages/exports.dart';

// class GoogleNavigationBar extends StatefulWidget {
//   const GoogleNavigationBar({super.key});

//   @override
//   State<GoogleNavigationBar> createState() => _GoogleNavigationBarState();
// }

class GoogleNavigationBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int)? onTabChange;

  GoogleNavigationBar({
    super.key, 
    required this.currentIndex,
    required this.onTabChange
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: GNav(
        tabBorderRadius: 25,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        gap: 6,
        hoverColor: Color.fromARGB(255, 84, 107, 129),
        tabBackgroundColor: Color.fromARGB(255, 209, 232, 255),
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.favorite,
            text: 'Favorites',
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'Cart',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
