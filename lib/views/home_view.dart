import 'package:flutter/material.dart';
import 'package:practise_api_news_app/widgets/custom_appbar.dart';
import 'package:practise_api_news_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:practise_api_news_app/widgets/single_child_scroll_home_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
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
        body: const SingleChildScrollHomeView(),
        bottomNavigationBar: const CustomBottomNavigationBar(),
        );
  }
}


