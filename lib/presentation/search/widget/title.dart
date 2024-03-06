import 'package:flutter/material.dart';

class SearchTextTitle extends StatelessWidget {
  final String tittle;
  const SearchTextTitle({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
