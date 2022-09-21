import 'package:flutter/material.dart';
import 'package:pertama_kali2/shared/theme.dart';

class CustomTitle extends StatelessWidget {
  final String title;

  const CustomTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: blackTextStyle.copyWith(
        fontSize: 24,
        fontWeight: semibold,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}