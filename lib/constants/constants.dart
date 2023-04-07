import 'package:cypher_school_assignment/widgets/carousels/carousel_container1.dart';
import 'package:flutter/material.dart';

import '../widgets/carousels/carousel_container2.dart';

const Color kScaffoldDarkColor = Color(0xFF192734);
const Color kCardDarkColor = Color(0xFF2c3d4f);

List<String> imgList = ['assets/web.png', 'assets/flutter.png'];

List<String> imgHeading = [
  'Full-Stack Development using MERN',
  'App Development using Flutter',
];

List<String> imgDomain = [
  'Web Development',
  'App Development',
];

List<String> homeCarousel = [
  'assets/qrated.png',
  'assets/cipherpoints.png',
  'assets/mentor-carousel.png'
];

List<Widget> carousel2 = [
  CarouselContainer1(
    isDark: false,
  ),
  CarouselContainer2(
    isDark: false,
  ),
];
