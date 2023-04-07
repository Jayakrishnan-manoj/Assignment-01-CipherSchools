import 'package:flutter/material.dart';

import 'package:cypher_school_assignment/constants/constants.dart';
import 'package:cypher_school_assignment/widgets/carousels/recommended_course_carousel.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/carousels/course_main_carousel.dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:provider/provider.dart';
import '../provider/theme_provider.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool _isDark = false;
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final _isDark = themeProvider.isDarkModeEnabled;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: _isDark ? kScaffoldDarkColor : Colors.white,
      appBar: AppBar(
        backgroundColor: _isDark ? kCardDarkColor : Colors.white,
        title: Row(
          children: [
            Image.asset(
              'assets/Cipherschools_icon@2x.3b571d743ffedc84d039.png',
              //fit: BoxFit.contain,
              height: screenHeight * 0.04,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "CipherSchools",
              style: TextStyle(
                color: _isDark ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          SizedBox(
            width: 60,
            height: 30,
            child: DayNightSwitcher(
              sunColor: Colors.orange,
              dayBackgroundColor: kCardDarkColor,
              isDarkModeEnabled: _isDark,
              onStateChanged: (_) {
                themeProvider.toggleTheme();
              },
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 20,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 20,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const MainCarousel(),
                Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight * 0.04,
                    left: screenWidth * 0.03,
                    right: screenWidth * 0.03,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recommended Courses",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: _isDark ? Colors.white : Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color:
                                  _isDark ? kCardDarkColor : Colors.grey[300],
                            ),
                            height: 40,
                            width: 120,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2(
                                items: const [],
                                hint: Text(
                                  "Popular",
                                  style: TextStyle(
                                    color:
                                        _isDark ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RecommendedCarousel(
                        isDark: _isDark,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Latest Videos",
                          style: TextStyle(
                            fontSize: 20,
                            color: _isDark ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RecommendedCarousel(
                        isDark: _isDark,
                      ),
                      const SizedBox(
                        height: 200,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavBar(
                index: 1,
                isDark: _isDark,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void darkMode(bool _isDark) {
    setState(() {
      this._isDark = _isDark;
    });
  }
}
