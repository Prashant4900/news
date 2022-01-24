import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:news/config/routes/router.gr.dart';

class MyDashboard extends StatelessWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AutoTabsScaffold(
        routes: const [
          HomeRouter(),
          FeedRouter(),
          BookmarkRouter(),
          UserRouter()
        ],
        bottomNavigationBuilder: (_, tabRouter) {
          return BottomNavigationBar(
            currentIndex: tabRouter.activeIndex,
            onTap: tabRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.rss_feed_outlined),
                label: 'Feed',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline),
                label: 'Bookmark',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'User',
              ),
            ],
          );
        },
      ),
    );
  }
}
