import 'package:carousel_slider/carousel_slider.dart';
import 'package:cypher_school_assignment/constants/constants.dart';
import 'package:flutter/material.dart';

class RecommendedCarousel extends StatelessWidget {
  final bool isDark;
  const RecommendedCarousel({Key? key, required this.isDark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: carousel2.length,
      itemBuilder: (context, index, realIdx) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: isDark ? kCardDarkColor : Colors.white,
          ),
          child: carousel2[index],
        );
      },
      options: CarouselOptions(
        aspectRatio: 1.26,
        enlargeCenterPage: false,
        viewportFraction: 0.58,
      ),
    );
  }
}
