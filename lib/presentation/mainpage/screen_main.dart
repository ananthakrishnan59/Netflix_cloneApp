

import 'package:flutter/material.dart';
import 'package:netflixclone/presentation/Fastandlaugh/fast_and_laugh.dart';
import 'package:netflixclone/presentation/Home/screen_home.dart';
import 'package:netflixclone/presentation/Home/widget/botton_nav.dart';
import 'package:netflixclone/presentation/NewandHot/new_and_hot.dart';
import 'package:netflixclone/presentation/download/download.dart';
import 'package:netflixclone/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages =  [
    SreenHome(),
    ScreenNewandHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
   ScreenDownloadPage()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: indexChangeNOtifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
        bottomNavigationBar:const BottomNavigation(),
      ),
    );
  }
}
