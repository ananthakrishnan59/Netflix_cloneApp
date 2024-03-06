import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constance.dart';
import 'package:netflixclone/presentation/widgets/app_bar_widget.dart';

class ScreenDownloadPage extends StatelessWidget {
  ScreenDownloadPage({super.key});

  final _widgetList = [const _SmartDownloads(), Section2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarWidget(title: "Downloads "),
        ),
        body: ListView.separated(
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index) => _widgetList[index],
            separatorBuilder: (context, index) => const SizedBox(
                  height: 25,
                ),
            itemCount: _widgetList.length));
  }
}

   // section 2 containing text and images of the movies

class Section2 extends StatelessWidget {
  Section2({super.key});

  final List imageList = [
    'https://images.ctfassets.net/4cd45et68cgf/79dQlB6ad0P6x1sISQs1VO/3f5e2dcd3e6cdc8dd6d5fed024d2eeba/EN-US_MyNameS1_Teaser_Solo_Vertical_RGB_PRE.jpg?w=1200',
    'https://hips.hearstapps.com/hmg-prod/images/sad-romance-movies-on-netflix-call-me-by-your-name-659c42c72370f.jpeg',
    'https://www.whats-on-netflix.com/wp-content/uploads/covers/alive.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kWhitecolor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          'We will download a personalised selection of \n movies and shows for you, so there is \n always something to watch your \n device ',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 17),
        ),
        // kheight,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: size.width * 0.37,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                ),
              ),
              DownloadImageWidget(
                imageList: imageList[0],
                margin: const EdgeInsets.only(left: 170, top: 50),
                angle: 25,
                size: Size(size.width * 0.30, size.width * 0.50),
              ),
              DownloadImageWidget(
                imageList: imageList[1],
                margin: const EdgeInsets.only(right: 170, top: 50),
                angle: -20,
                size: Size(size.width * 0.30, size.width * 0.50),
              ),
              DownloadImageWidget(
                imageList: imageList[2],
                radius: 8,
                margin: const EdgeInsets.only(bottom: 35, top: 50),
                size: Size(size.width * 0.36, size.width * 0.56),
              ),
            ],
          ),
        ),
      ],
    );
  }

}

    // section 3 containing 2 buttons

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonColorBlue,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Setup',
                style: TextStyle(
                    color: kWhitecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          color: kButtonColorWhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
        )
      ],
    );
  }
}

   // images of the movies

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kWidth,
        Icon(
          Icons.settings,
          color: kWhitecolor,
        ),
        kWidth,
        Text('Smart Download')
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            width: size.width,
            height: size.height,
            // color: kBlackColor,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageList),
            )),
          ),
        ),
      ),
    );
  }
}
