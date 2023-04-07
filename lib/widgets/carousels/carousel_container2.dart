import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class CarouselContainer2 extends StatelessWidget {
  bool isDark;
  CarouselContainer2({super.key, required this.isDark});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    final theme = Theme.of(context);
    final cardColor = isDark ? kCardDarkColor : theme.cardColor;

    return Card(
      elevation: 0,
      color: cardColor,
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
                'assets/languify-1.webp',
                fit: BoxFit.cover,
                height: screenHeight * 0.12,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: screenHeight * 0.027,
                width: screenWidth * 0.32,
                decoration: BoxDecoration(
                    color: const Color(0xFFF3912E1A).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5)),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 8.0,
                    top: 4.0,
                  ),
                  child: Text(
                    "Languify",
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
                top: 4,
                left: 6,
                bottom: 3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'FREE IELTS/TOEFL...',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'AI generated feedback...',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'Test Duration: 30 mins..',
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
                  'assets/lang-logo.png',
                ),
              ),
              title: Text(
                'Languify',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: screenWidth * 0.035,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              subtitle: Text(
                'express & excel',
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
