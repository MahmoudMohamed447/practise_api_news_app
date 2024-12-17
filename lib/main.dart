import 'package:flutter/material.dart';
import 'package:practise_api_news_app/widgets/custom_appbar.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: Scaffold(
        appBar: AppBar(
          title: const CustomAppBar(),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(Icons.notifications, size: 32,color: Color(0xffFF626A),),
            )
          ],
        ),
        body:  Container(),
      ),
    );
  }
}


