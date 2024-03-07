import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflixclone/core/constance.dart';
import 'package:netflixclone/presentation/Home/number_title_card.dart';
import 'package:netflixclone/presentation/Home/widget/background_card.dart';
import 'package:netflixclone/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class SreenHome extends StatelessWidget {
  const SreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            print(direction);
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }

            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  BackgroundCard(),
                  kheight,
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: MainTitleCard(
                      title: 'Released in the  past year',
                    ),
                  ),
                  kheight,
                  MainTitleCard(
                    title: 'Trending Now',
                  ),
                  kheight,
                  NumberTitleCard(),
                  kheight,
                  MainTitleCard(
                    title: 'Tense Dramas',
                  ),
                  kheight,
                  MainTitleCard(
                    title: 'South Indian Cinema',
                  ),
                  kheight,
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 90,
                      color: Colors.black.withOpacity(0.2),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Image.network(
                                  'https://static.vecteezy.com/system/resources/previews/017/396/804/original/netflix-mobile-application-logo-free-png.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              const Spacer(),
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
                          ),
                          kheight,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("TV Shows", style: KHomeTitleText),
                              Text("Movies", style: KHomeTitleText),
                              Text("Categories", style: KHomeTitleText)
                            ],
                          )
                        ],
                      ),
                    )
                  : kheight,
            ],
          ),
        );
      },
    ));
  }
}
