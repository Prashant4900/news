import 'package:flutter/material.dart';
import 'package:news/views/widgets/screens/home/pages/all_page.dart';
import 'package:news/views/widgets/screens/home/pages/feed_page.dart';
import 'package:news/views/widgets/screens/home/widgets/tabs_lables.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Container(
            color: Theme.of(context).dialogBackgroundColor,
            child: const TabBar(
              indicatorColor: Colors.red,
              tabs: [
                TabLableWidget(lable: 'My Feed'),
                TabLableWidget(lable: 'All'),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            MyFeedPageWidget(),
            MyAllPageWidget(),
          ],
        ),
      ),
    );
  }
}
