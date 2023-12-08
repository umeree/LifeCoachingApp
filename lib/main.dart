import 'package:flutter/material.dart';
import 'package:lifecoaching/screens/OnBoarding1.dart';
import 'package:lifecoaching/screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.black)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
