// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, avoid_web_libraries_in_flutter

import 'package:booking_pesawat/ui/widget/destination_tile.dart';
import 'package:flutter/material.dart';
import 'package:booking_pesawat/shared/theme.dart';
import 'package:booking_pesawat/ui/widget/custom_subtitle.dart';
import 'package:booking_pesawat/ui/widget/custom_title.dart';
import 'package:booking_pesawat/ui/widget/destination_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 24,
          right: 24,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTitle(
                    title: 'Howdy, Kezia Anne',
                  ),
                  CustomSubTitle(
                    subTitle: 'Where to fly today?',
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.fromLTRB(
          24,
          30,
          24,
          30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(),
              DestinationCard(),
              DestinationCard(),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 140,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: 16,
              ),
              child: Text(
                'New This Year',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semibold,
                ),
              ),
            ),
            DestinationTile(
              name: 'Danau Beratan',
              city: 'Singa Raja',
              imageUrl: 'assets/image_destination6.png',
            ),
            DestinationTile(
              name: 'Danau Beratan',
              city: 'Singa Raja',
              imageUrl: 'assets/image_destination6.png',
            ),
            DestinationTile(
              name: 'Danau Beratan',
              city: 'Singa Raja',
              imageUrl: 'assets/image_destination6.png',
            ),
            DestinationTile(
              name: 'Danau Beratan',
              city: 'Singa Raja',
              imageUrl: 'assets/image_destination6.png',
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
