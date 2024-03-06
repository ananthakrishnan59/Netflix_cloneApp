import 'package:flutter/material.dart';

import 'package:netflixclone/core/constance.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          kWidth,
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
    );
  }
}
