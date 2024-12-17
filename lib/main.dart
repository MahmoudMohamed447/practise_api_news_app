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
              child: Icon(
                Icons.notifications,
                size: 32,
                color: Color(0xffFF626A),
              ),
            )
          ],
        ),
        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal:16),
              child: Row(
                children: [
                  Text(
                    'Latest News',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Spacer(flex: 15,),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize:15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(flex: 1,),
                  Icon(Icons.arrow_forward, color: Colors.blue,size: 15,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
