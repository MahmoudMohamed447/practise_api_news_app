import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 40,
            child: TextField(
              cursorColor: Colors.grey,
      decoration: InputDecoration(
    contentPadding:const EdgeInsets.only(left: 16),
    hintText: 'Search',
    hintStyle: const TextStyle(color: Colors.grey),
    suffixIcon:  Icon(Icons.search,size: 32,color: Colors.black.withOpacity(0.4)),
    border: appBarBorderStyle(),
    focusedBorder: appBarBorderStyle(),
    enabledBorder: appBarBorderStyle(),
            )),
          );
  }

  OutlineInputBorder appBarBorderStyle() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide:  BorderSide(color: Colors.grey.withOpacity(0.3)));
  }
}