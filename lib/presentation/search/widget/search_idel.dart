import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constance.dart';
import 'package:netflixclone/presentation/search/widget/title.dart';

const imageUrl =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDpVjU6iHqgYNoiKhxiV4GGSqMdbshWmZKDQ&usqp=CAU';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const  SearchTextTitle(tittle: 'Top Searches'),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchItemTile(),
              separatorBuilder: (context, index) => kheight20,
              itemCount: 10),
        )
      ],
    );
  }
}



class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(
              color: kWhitecolor, fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const CircleAvatar(
          backgroundColor: kWhitecolor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlackColor,
            radius: 23
            ,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kWhitecolor,
            ),
          ),
        )
      ],
    );
  }
}
