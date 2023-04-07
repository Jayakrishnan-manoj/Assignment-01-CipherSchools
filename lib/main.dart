import 'package:cypher_school_assignment/provider/theme_provider.dart';
import 'package:cypher_school_assignment/screens/course_screen.dart';
import 'package:cypher_school_assignment/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'CypherSchool',
            theme: ThemeData(
              primarySwatch: Colors.orange,
              scaffoldBackgroundColor: Colors.white,
              cardColor: Colors.white,
            ),
            darkTheme: ThemeData(
                primarySwatch: Colors.orange,
                scaffoldBackgroundColor: kScaffoldDarkColor,
                cardColor: kCardDarkColor,
                textTheme: TextTheme(
                    displayMedium: TextStyle(
                  color: Colors.white,
                ))),
            themeMode: themeProvider.themeMode,
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_)=>ThemeProvider(),

//       child: const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'CypherSchool',
//         home: HomeScreen(),
//       ),
//     );
//   }
// }
