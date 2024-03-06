import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constance.dart';

class ScreenNewandHot extends StatelessWidget {
  const ScreenNewandHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: const Text(
                "New & Hot",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              actions: [
                const Icon(
                  Icons.cast_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                kWidth,
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.blue,
                ),
                kWidth
              ],
              bottom: TabBar(
                  labelColor: kBlackColor,
                  unselectedLabelColor: kWhitecolor,
                  isScrollable: true,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                      color: kWhitecolor, borderRadius: kradius30),
                  tabs: [
                    Tab(
                      text: '🍿 Coming Soon',
                    ),
                    Tab(
                      text: "👀 Everyone's Watching",
                    )
                  ]),
            )),
        body: TabBarView(children: [
          _buildTabBarView("coming Soon"),
          _buildTabBarView("hai")
        ]),
      ),
    );
  }

  _buildTabBarView(String name) {
    return Center(
      child: Text("$name"),
    );
  }
}
