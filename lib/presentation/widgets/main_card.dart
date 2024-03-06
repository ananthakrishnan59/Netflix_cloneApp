import 'package:flutter/material.dart';
import 'package:netflixclone/core/constance.dart';

class Maincard extends StatelessWidget {
  const Maincard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      // color: Colors.amber,
      decoration: BoxDecoration(
        borderRadius: kradius10,
        image: const DecorationImage(
          image: NetworkImage(
              'https://images.ctfassets.net/4cd45et68cgf/79dQlB6ad0P6x1sISQs1VO/3f5e2dcd3e6cdc8dd6d5fed024d2eeba/EN-US_MyNameS1_Teaser_Solo_Vertical_RGB_PRE.jpg?w=1200'),
        ),
      ),
    );
  }
}
