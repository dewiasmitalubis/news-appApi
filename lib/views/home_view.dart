import 'package:flutter/material.dart';
import 'package:newsapp/constants.dart';
import 'popular_tab_view.dart';
import 'recent_tab_view.dart';
import 'trending_tab_view.dart';

import '../constants.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "WELCOME",
                  textAlign: TextAlign.end,
                  style: kNonActiveTabStyle,
                ),
                subtitle: Text(
                  "Dewi Asmita Lubis",
                  textAlign: TextAlign.end,
                  style: kActiveTabStyle,
                ),
                trailing: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage("assets/me.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: kGrey1,
                  unselectedLabelStyle: kNonActiveTabStyle,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle: kActiveTabStyle.copyWith(fontSize: 25.0),
                  tabs: [
                    Tab(text: "Headlines"),
                    Tab(text: "Trending"),
                    Tab(text: "Recent"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PopularTabView(),
            TrendingTabView(),
            RecentTabView(),
          ],
        ),
      ),
    );
  }
}
