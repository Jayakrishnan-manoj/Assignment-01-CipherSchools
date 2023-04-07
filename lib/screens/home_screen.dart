import 'package:flutter/material.dart';

import 'package:cypher_school_assignment/widgets/carousels/home_main_carousel.dart';
import 'package:cypher_school_assignment/widgets/face_list.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var screenWidth = constraints.maxWidth;
      var screenHeight = constraints.maxHeight;
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Image.asset(
                'assets/Cipherschools_icon@2x.3b571d743ffedc84d039.png',
                fit: BoxFit.contain,
                height: screenHeight * 0.04,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "CipherSchools",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.bars,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight * 0.12,
                    left: screenWidth * 0.03,
                    right: screenWidth * 0.03,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text.rich(
                          TextSpan(
                              text: "Welcome to",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: " the",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ]),
                        ),
                        const Text.rich(
                          TextSpan(
                              text: "Future",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: " of Learning!",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ]),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Start Learning by best creators for",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: screenWidth > 400
                                ? screenWidth * 0.05
                                : screenWidth * 0.06,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "absolutely Free!",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: screenWidth > 400
                                ? screenWidth * 0.05
                                : screenWidth * 0.06,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Row(
                          children: [
                            const FaceList(),
                            Column(
                              children: [
                                const Text(
                                  '50+',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  'Mentors',
                                  style:
                                      TextStyle(fontSize: screenWidth * 0.041),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                              child: VerticalDivider(
                                width: 15,
                                color: Colors.grey,
                                thickness: 1.3,
                              ),
                            ),
                            Column(
                              children: [
                                const Text(
                                  '4.8/5',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Row(
                                  children: [
                                    RatingBarIndicator(
                                      rating: 4.5,
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      itemCount: 5,
                                      itemSize: screenWidth * 0.038,
                                      unratedColor: Colors.grey,
                                      direction: Axis.horizontal,
                                    ),
                                    Text(
                                      'Ratings',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.041),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: screenWidth * 0.50,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Start Learning Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenWidth > 400
                                        ? screenWidth * 0.035
                                        : screenWidth * 0.04,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        HomeCarousel(),
                        SizedBox(
                          height: 200,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomBottomNavBar(
                  index: 0,
                  isDark: false,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
