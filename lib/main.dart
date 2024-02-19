// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/provider/count_provider.dart';
import 'package:provider_statemanagement/provider/favorite_provider.dart';
import 'package:provider_statemanagement/provider/login_provider.dart';
import 'package:provider_statemanagement/provider/slider_provider.dart';
import 'package:provider_statemanagement/provider/theme_provider.dart';
import 'package:provider_statemanagement/provider_screen/count.dart';
import 'package:provider_statemanagement/provider_screen/favorite_example.dart';
import 'package:provider_statemanagement/provider_screen/login.dart';
import 'package:provider_statemanagement/provider_screen/slider.dart';
import 'package:provider_statemanagement/provider_screen/theme.dart';
import 'package:provider_statemanagement/without_provider/favorite_example.dart';
import 'package:provider_statemanagement/without_provider/slider_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //** THIS IS MULTIPROVIDER, Note: The Single provider code is commented in the last of this file */
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
      ],
      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
              brightness: Brightness.light,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
              useMaterial3: true,
              primarySwatch: Colors.teal),
          darkTheme: ThemeData(
              brightness: Brightness.dark, primaryColor: Colors.white),
          home: const LoginScreen(),
        );
      }),
    );
  }
}


 // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
  //** THIS IS SINGLE PROVIDER CODE */
//     return ChangeNotifierProvider(
//         create: (_) => CountProvider(),
//         child: MaterialApp(
//           debugShowCheckedModeBanner: false,
//           title: 'Flutter Demo',
//           theme: ThemeData(
//             colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//             useMaterial3: true,
//           ),
//           home: const SliderExample(),
//         ));
//   }
// }
