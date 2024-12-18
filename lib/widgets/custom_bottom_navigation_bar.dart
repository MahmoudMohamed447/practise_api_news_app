import 'package:flutter/material.dart';
import 'package:practise_api_news_app/widgets/custom_nav_bar_items.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40, right: 30, left: 30),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomNavBarItems(
                icon: Icons.home,
                iconName: 'Home',
                onTap: () {
                  print('Home Selected');
                },
                isSelected: true),
            CustomNavBarItems(
                icon: Icons.favorite,
                iconName: 'Favorite',
                onTap: () {
                  print('Favorite Selected');
                },
                isSelected: false),
            CustomNavBarItems(
                icon: Icons.person,
                iconName: 'Profile',
                onTap: () {
                  print('Profile Selected');
                },
                isSelected: false),
          ],
        ),
      ),
    );
  }
}
