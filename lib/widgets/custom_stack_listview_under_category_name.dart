import 'package:flutter/material.dart';

class CustomNewsStackUnderCategoryNameListViewBuilder extends StatelessWidget {
  const CustomNewsStackUnderCategoryNameListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: const Image(
            width: double.infinity,
            height: 160,
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR54dOpFMZ7IXAOjrKmZfMYKvhkZtOZ9OGxPg&s'),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          child: Text(
            'News Title',
            style: TextStyle(color: Colors.white),
          ),
          top: 20,
          left: 20,
          right: 20,
        ),
        Positioned(
          child: Text(
            'News Author',
            style: TextStyle(color: Colors.white),
          ),
          bottom: 20,
          left: 20,
          right: 20,
        ),
        Positioned(
          child: Text(
            'News Date',
            style: TextStyle(color: Colors.white),
          ),
          bottom: 20,
          right: 20,
        )
      ]),
    );
  }
}
