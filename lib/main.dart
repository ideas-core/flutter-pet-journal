import 'package:flutter/material.dart';
import 'package:flutter_pet_journal/views/screens/home/home_page.dart';
import 'package:flutter_pet_journal/views/screens/today/today_grow_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: const TextTheme(
            titleLarge: TextStyle(
                fontFamily: 'Noto Sans KR',
                fontWeight: FontWeight.w800,
                color: Color(0xFF212529),
                fontSize: 21,
                height: 30),
            titleSmall: TextStyle(
                fontFamily: 'Noto Sans KR',
                fontWeight: FontWeight.w700,
                color: Color(0xFF212529),
                fontSize: 14,
                height: 21),
            displaySmall: TextStyle(
                fontFamily: 'Noto Sans KR',
                fontWeight: FontWeight.w500,
                color: Color(0xFF868E96),
                fontSize: 12,
                height: 18),
            bodySmall: TextStyle(
                fontFamily: 'Noto Sans KR',
                fontWeight: FontWeight.w400,
                color: Color(0xFF212529),
                fontSize: 12,
                height: 18),
          ),
          fontFamily: 'Noto Sans KR'),
      home: const HomePage(),
    );
  }
}
