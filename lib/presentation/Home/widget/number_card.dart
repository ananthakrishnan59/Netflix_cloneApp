import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constance.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: kradius10,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.ctfassets.net/4cd45et68cgf/79dQlB6ad0P6x1sISQs1VO/3f5e2dcd3e6cdc8dd6d5fed024d2eeba/EN-US_MyNameS1_Teaser_Solo_Vertical_RGB_PRE.jpg?w=1200'),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: -30,
          child: BorderedText(
            strokeWidth: 9.0,
            strokeColor: kWhitecolor,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                  fontSize: 140,
                  color: kBlackColor,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
