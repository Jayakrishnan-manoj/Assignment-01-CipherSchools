import 'package:cypher_school_assignment/constants/constants.dart';
import 'package:cypher_school_assignment/screens/course_screen.dart';
import 'package:cypher_school_assignment/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavBar extends StatelessWidget {
  int index;
  bool isDark;
  CustomBottomNavBar({Key? key, required this.index, required this.isDark})
      : super(key: key);

  //_selectedIndex = widget.index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(40),
        ),
        color: isDark ? kScaffoldDarkColor : Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.home,
                    color: index == 0
                        ? Colors.orange
                        : isDark
                            ? Colors.white
                            : Colors.black,
                    size: 28,
                  ),
                ),
                Text(
                  "Home",
                  style: TextStyle(
                    color: index == 0
                        ? Colors.orange
                        : isDark
                            ? Colors.white
                            : Colors.black,
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const CourseScreen(),
                ),
              );
            },
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const CourseScreen(),
                      ),
                    );
                  },
                  icon: Icon(
                    FontAwesomeIcons.book,
                    color: index == 1
                        ? Colors.orange
                        : isDark
                            ? Colors.white
                            : Colors.black,
                    size: 28,
                  ),
                ),
                Text(
                  "Courses",
                  style: TextStyle(
                    color: index == 1
                        ? Colors.orange
                        : isDark
                            ? Colors.white
                            : Colors.black,
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.compass,
                    color: index == 2
                        ? Colors.orange
                        : isDark
                            ? Colors.white
                            : Colors.black,
                    size: 28,
                  ),
                ),
                Text(
                  "Trending",
                  style: TextStyle(
                    color: index == 2
                        ? Colors.orange
                        : isDark
                            ? Colors.white
                            : Colors.black,
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: index == 3
                        ? Colors.orange
                        : isDark
                            ? Colors.white
                            : Colors.black,
                    size: 28,
                  ),
                ),
                Text(
                  "My profile",
                  style: TextStyle(
                    color: index == 3
                        ? Colors.orange
                        : isDark
                            ? Colors.white
                            : Colors.black,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
