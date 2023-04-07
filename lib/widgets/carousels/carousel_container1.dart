import 'package:cypher_school_assignment/constants/constants.dart';
import 'package:flutter/material.dart';

class CarouselContainer1 extends StatelessWidget {
  bool isDark;
  CarouselContainer1({super.key, required this.isDark});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    final theme = Theme.of(context);
    final cardColor = isDark ? kCardDarkColor : theme.cardColor;

    return Card(
      // color: isDark ? kCardDarkColor : Colors.white,
      color: cardColor,
      elevation: 0,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              ),
              child: Image.asset(
                'assets/web-small.jpeg',
                fit: BoxFit.cover,
                height: screenHeight * 0.12,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: screenHeight * 0.027,
                width: screenWidth * 0.35,
                decoration: BoxDecoration(
                    color: const Color(0xfff3912e1a).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5)),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 8.0,
                    top: 4.0,
                  ),
                  child: Text(
                    "Web Development",
                    style: TextStyle(
                      color: Color(0xFFF3912E),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 6,
                left: 6,
                bottom: 3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Web Development',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'No of Videos: 138',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'Course Time: 21.8 hours',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  'assets/harshit-vashisht.jpeg',
                ),
              ),
              title: Text(
                'Harshit Vashisth',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: screenWidth * 0.030,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              subtitle: Text(
                'Instructor',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: 14,
                    ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
