import 'package:flutter/material.dart';

class CustomNavBarItems extends StatelessWidget {
  const CustomNavBarItems(
      {super.key,
      required this.icon,
      required this.iconName,
      required this.onTap,
      required this.isSelected});
  final IconData icon;
  final String iconName;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.redAccent : Colors.grey,
            size: 32,
          ),
          Text(iconName,style:const TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}