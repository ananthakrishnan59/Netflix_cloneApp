import 'package:flutter/material.dart';
import 'package:netflixclone/presentation/downlaods/widgets/screen_downloads.dart';
import 'package:netflixclone/presentation/fastLaugh/screen_fast_laugh.dart';
import 'package:netflixclone/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflixclone/presentation/new&hot/screen_newandhot.dart';
import 'package:netflixclone/presentation/search/screen_search.dart';

import '../home/screen_home.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({super.key});

  final pages = const [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavWiget(),
    );
  }
}
