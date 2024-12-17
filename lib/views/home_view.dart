import 'package:flutter/material.dart';
import 'package:practise_api_news_app/widgets/custom_appbar.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(children: [
                Text(
                  'Latest News',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Spacer(
                  flex: 15,
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.blue,
                  size: 15,
                )
              ]),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return  Stack(
                    children: [
                      Padding(
                        padding:const EdgeInsets.only(right: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:const Image(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR54dOpFMZ7IXAOjrKmZfMYKvhkZtOZ9OGxPg&s'),fit:BoxFit.cover,),
                        ),
                      ),
                             const Positioned(child:  Text('Category Title', style: TextStyle(
                                color: Colors.white,
                                fontSize: 24
                              ),),left: 20, bottom: 100,),
                              const Positioned(child: Text('Category SubTitle', style: TextStyle(
                                color: Colors.grey
                              ),),bottom: 40,left: 20,)
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
