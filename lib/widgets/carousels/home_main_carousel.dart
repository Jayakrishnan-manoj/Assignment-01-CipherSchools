import 'package:cypher_school_assignment/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_3d/gallery3d.dart';

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key});

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Gallery3D(
      itemConfig: GalleryItemConfig(
        width: screenWidth < 400 ? screenWidth * 0.61 : screenWidth * 0.50,
        height: screenHeight < 800 ? screenHeight * 0.29 : screenHeight * 0.22,
        radius: 10,
        isShowTransformMask: false,
      ),
      onItemChanged: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      controller: Gallery3DController(itemCount: homeCarousel.length),
      width: MediaQuery.of(context).size.width * 0.8,
      isClip: true,
      itemBuilder: (context, index) {
        return Image.asset(
          homeCarousel[index],
          fit: BoxFit.fill,
        );
      },
    );
  }
}
